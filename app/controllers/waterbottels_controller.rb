class WaterbottelsController < ApplicationController
    def index 
        waterbottels = Waterbottel.all
        render json: waterbottels, include: [:drinker]
    end

    def show 
        waterbottel = Waterbottel.find(params[:id])
        render json: waterbottel
    end

    def create
        waterbottel = Waterbottel.create(
            brand: params[:brand],
            drinker_id: params[:drinker_id]
        )
        render json: waterbottel
    end

    def update

        waterbottel = Waterbottel.find(params[:id])
        
        waterbottel.update(
            brand: params[:brand],
            drinker_id: params[:drinker_id]
        )
        render json: waterbottel
    end

    def destroy
        waterbottel = Waterbottel.find(params[:id])

        waterbottel.destroy

    end
end
