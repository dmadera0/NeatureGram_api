class AuthenticationController < ApplicationController
    
    def login
        user =User.find_by(name: params:[:name])

       if !@user
        render json:{ message: 'That user does not exist'}, status: :unauthorized
       else
        if !@user.authenticate params[:password]
            render json:{message: 'Bad password'}, status: :unauthorized
        else
            render json: {user: @user}, status: :ok
       end
        end
    end
end
