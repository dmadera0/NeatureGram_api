class ApplicationController < ActionController::API

    before_action :authenticate

    def authenticate
        auth_header = request.headers['Authorization']

        if !auth_header
            render json: {message: 'No Token'}, status: :forbidden
        else
            token = auth_header.split(' ').last
            secret = 'secret'
            begin
                decoded_token = JWT.decode token, secret
                payload = decoded_token.first
                user_id = payload['user_id']
                @user = User.find(user_id)
            rescue
                render: json: {message: 'Invalid JWT'}, status: :forbidden
            end
            render json: {message: 'cool token'}, status: :ok
        end
    end

end
