class GrainSerializer
    def initialize(grain_object)
        @grain = grain_object
    end

    def to_serialized_json
        @grain.to_json(:only => [:id, :name, :lovibond, :gravity])
    end
end