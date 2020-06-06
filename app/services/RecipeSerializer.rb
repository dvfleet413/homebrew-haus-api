class RecipeSerializer
    def initialize(recipe_object)
        @recipe = recipe_object
    end

    def to_serialized_json
        @recipe.to_json(:include => {
            :grain_ingredients => {:only => [:weight], :methods => :name},
            :malt_ingredients => {:only => [:weight], :methods => :name},
            :hop_ingredients => {:only => [:hop_type, :weight], :methods => :name},
            :yeast_ingredient => {:methods => :name}
        }, :only => [:id, :name, :category, :summary])
    end
end