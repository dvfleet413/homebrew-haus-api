class RecipeSerializer
    def initialize(recipe_object)
        @recipe = recipe_object
    end

    def to_serialized_json
        @recipe.to_json(:include => {
            :grains => {:only => [:id, :name, :weight]},
            :malts => {:only => [:id, :name, :weight]},
            :hops => {:only => [:id, :name, :hop_type, :weight]},
            :yeast => {:only => [:name]}
        }, :only => [:id, :name, :category, :summary])
    end
end