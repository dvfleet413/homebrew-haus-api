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
        recipe = Recipe.create!(recipes_params)
    end

    def destroy
    end

    private
        def recipes_params
            params.require(:recipe).permit(:name, :category, :summary, 
                                            grains_attributes: [:name, :weight], 
                                            malts_attributes: [:name, :weight],
                                            hops_attributes: [:name, :hop_type, :weight],
                                            yeast_attributes: [:name])
        end
end
