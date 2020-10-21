class PostsController < ApplicationController

    def index
        @posts = Post.all

        render json: @posts
    end

    def create 
        @post = Post.create(
            title: params[:title],
            image: params[:image],
            descripition: params[:descripition]

        )

        render json: @post
    end

    def destroy
        @post = Post.find(params[:id]) 

        @post.destroy

        render json:@post
    end
end
