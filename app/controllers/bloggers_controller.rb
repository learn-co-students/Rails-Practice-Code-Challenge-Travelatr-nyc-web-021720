class BloggersController < ApplicationController

    def new 
        @blogger=Blogger.new()
    end

    def create
        @blogger=Blogger.create(blogger_params)
        
        if @blogger.valid?
            redirect_to @blogger
        else
            flash[:errors]=@blogger.errors.full_messages
            redirect_to new_blogger_path
        end
    end

    def index
        @bloggers=Blogger.all
    end

    def show
        @blogger=Blogger.find(params[:id])
    end

    private

    def blogger_params
        params.require(:blogger).permit!
    end


end
