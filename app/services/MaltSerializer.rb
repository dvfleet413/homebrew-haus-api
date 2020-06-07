class MaltSerializer
    def initialize(malt_object)
        @malt = malt_object
    end

    def to_serialized_json
        @malt.to_json(:only => [:id, :name, :lovibond, :gravity])
    end
end