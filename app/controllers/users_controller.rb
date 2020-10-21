class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(
            name: params[:name],
            password: params[:password]
        )

        render json: @user
    end

    def destroy
        @user = User.find(params[:id])

        @user.destroy 

        render json: @user
    end
end
