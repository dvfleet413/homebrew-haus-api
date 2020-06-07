class GrainsController < ApplicationController
    def index
        grains = Grain.all
        render json: GrainSerializer.new(grains).to_serialized_json
    end
end
