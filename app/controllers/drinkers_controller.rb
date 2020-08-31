class DrinkersController < ApplicationController

    def index 
        drinkers = Drinker.all
        render json: drinkers
    end

    def show 
        drinker = Drinker.find(params[:id])
        render json: drinker
    end

    def create
        drinker = Drinker.create(
            name: params[:name]
        )
        render json: drinker
    end

    def update

        drinker = Drinker.find(params[:id])
        
        drinker.update(
            name: params[:name]
        )
        render json: drinker
    end

    def destroy
        drinker = Drinker.find(params[:id])

        drinker.destroy

    end
    
end
