class RecipeSerializer
    def initialize(recipe_object)
        @recipe = recipe_object
    end

    def to_serialized_json
        @recipe.to_json(:include => {
            :grain_ingredients => {:only => [:id, :weight], :methods => :name},
            :malt_ingredients => {:only => [:id, :weight], :methods => :name},
            :hop_ingredients => {:only => [:id, :hop_type, :weight], :methods => :name},
            :yeast_ingredient => {:only => [:id], :methods => :name}
        }, :methods => [:color, :bitterness, :abv],
        :only => [:id, :name, :category, :summary])
    end
end