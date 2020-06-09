class RecipePlaygroundsController < ApplicationController
    def create
        recipe = Recipe.new(recipes_params)
        render json: PlaygroundSerializer.new(recipe).to_serialized_json
    end

    private 
        def recipes_params
            params.require(:recipe).permit(:name, :category, :summary, 
                                            grain_ingredients_attributes: [:grain_id, :weight], 
                                            malt_ingredients_attributes: [:malt_id, :name, :weight],
                                            hop_ingredients_attributes: [:hop_id, :hop_type, :weight, :alpha_acid],
                                            yeast_ingredient_attributes: [:yeast_id])
        end
end
