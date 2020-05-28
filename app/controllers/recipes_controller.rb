class RecipesController < ApplicationController
    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes).to_serialized_json
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        render json: RecipeSerializer.new(recipe).to_serialized_json
    end

    def create
    end

    def destroy
    end
end
