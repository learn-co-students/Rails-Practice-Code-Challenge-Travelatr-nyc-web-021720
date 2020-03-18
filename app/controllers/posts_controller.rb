class PostsController<ApplicationController


    private 

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end

end

end