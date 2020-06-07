class YeastSerializer
    def initialize(yeast_object)
        @yeast = yeast_object
    end

    def to_serialized_json
        @yeast.to_json(:only => [:id, :name])
    end
end