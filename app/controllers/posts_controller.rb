class PostsController < ApplicationController
     
    def show
        @post=Post.find(params[:id])
    end 

     def edit 
        @post = Post.find(params[:id])
        @bloggers = Blogger.all 
        @destinations = Destination.all
     end 

     def update 
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else 
            flash[:errors] = @post.errors.full_messages
            redirect_to edit_post_route
        end 
     
     end 


    private 
    def post_params
     params.require(:post).permit!
    end 

end 