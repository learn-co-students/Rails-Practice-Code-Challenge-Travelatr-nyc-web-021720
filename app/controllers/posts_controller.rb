class PostsController < ApplicationController
    def index

    end

    def show
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new()
    end

    def create
        @post = Post.create(post_params)

        if @post.valid?
            redirect_to @post
        else  
            flash[:errors] = @post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def edit
        @post = Post.find(params[:id])
    end
     
    def update
        @post = Post.find(params[:id])
        @post.update(params.require(:post).permit!)
        redirect_to post_path(@post)
    end

    private

    def post_params
        params.require(:post).permit!
    end
    
end
