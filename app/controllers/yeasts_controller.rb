class YeastsController < ApplicationController
    def index
        yeasts = Yeast.all
        render json: YeastSerializer.new(yeasts).to_serialized_json
    end
end
