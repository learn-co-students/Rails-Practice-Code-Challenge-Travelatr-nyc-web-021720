class DestinationsController<ApplicationController



    private 

    def destination_params
        params.require(:destination).permit(:name, :country)
    end

end

end