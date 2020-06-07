class MaltsController < ApplicationController
    def index
        malts = Malt.all
        render json: MaltSerializer.new(malts).to_serialized_json
    end
end
