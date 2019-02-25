class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def create
        @ingredient = Ingredient.create(ingredient_params(:name))
        redirect_to ingredient_path(@ingredient)
    end

    def edit
        @ingredient = Ingredient.find(params[:id])
    end

    def update
        @ingredient = Ingredient.find(params[:id])
        @ingredient.update(ingredient_params(:name))
        redirect_to ingredient_path(@ingredient)
    end

    def destroy
    end

    private

    def ingredient_params(*args)
        params.require(:ingredient).permit(*args)
    end
end
