class AuthenticationController < ApplicationController
    
    def login
        @user =User.find_by(name: params[:name])

       if !@user
        render json:{ message: 'That user does not exist'}, status: :unauthorized
       else
        if !@user.authenticate params[:password]
            render json:{message: 'Bad password'}, status: :unauthorized
        else
            payload = { user_id: @user.id}
            secret = 'secret'
            token = JWT.encode(payload, secret)
            render json: { token: token}, status: :ok
       end
        end
    end
end
