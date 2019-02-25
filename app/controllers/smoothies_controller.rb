class SmoothiesController < ApplicationController

    def index
        @smoothies = Smoothie.all
    end

    def show
        @smoothie = Smoothie.find(params[:id])
    end

    def new
    end

    def create
        @smoothie = Smoothie.create(smoothie_params(:name))
        params[:ingredients].each do |ingredient_params|
            # find or create the ingredient
            ingredient = Ingredient.find_or_create_by(ingredient_params[:name])
            unit = ingredient_params[:unit]
            quantity = ingredient_params[:quantity]
            # create the smoothie ingredient
            SmoothieIngredient.create(smoothie_id: smoothie.id, ingredient_id: ingredient.id, quantity: quatity, unit: unit)
        end
        redirect_to smoothie_path(@smoothie)
    end

    def edit
        @smoothie = Smoothie.find(params[:id])
    end

    def update
        @smoothie = Smoothie.find(params[:id])
        @smoothie.update(smoothie_params(:name))
        redirect_to smoothie_path(@smoothie)
    end

    def destroy
    end

    private

    def smoothie_params(*args)
        params.require(:smoothie).permit(*args)
    end

end
