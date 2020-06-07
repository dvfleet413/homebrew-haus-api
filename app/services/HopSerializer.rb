class HopSerializer
    def initialize(hop_object)
        @hop = hop_object
    end

    def to_serialized_json
        @hop.to_json(:only => [:id, :name])
    end
end