class PlaygroundSerializer
    def initialize(recipe_object)
        @recipe = recipe_object
    end

    def to_serialized_json
        @recipe.to_json(:methods => [:color, :bitterness, :abv])
    end
end