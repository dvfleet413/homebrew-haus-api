class HopsController < ApplicationController
    def index
        hops = Hop.all
        render json: HopSerializer.new(hops).to_serialized_json
    end
end
