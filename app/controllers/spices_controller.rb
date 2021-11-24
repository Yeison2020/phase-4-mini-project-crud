class SpicesController < ApplicationController

    def index
        spice = Spice.all 
        render json: spice
    end

    def create
        new_spice = Spice.create(spice_params)
        render json: new_spice, status: :created
    end

    def update 
        spice = Spice.find_by(id: params[:id])
        if spice 
            spice.update(spice_params)
            render json: spice

        else  
            render json: {error: 'Spice not found'}, status: :not_found
        end
    end

    def destroy
        spice = Spice.find_by(id: params[:id])
        if spice
            spice.destroy
            head :no_content
        else
          render json: { error: "Spice not found" }, status: :not_found
        end
    end



private 

def spice_params
   params.permit(:title, :image, :description, :notes, :rating) 
end



end
