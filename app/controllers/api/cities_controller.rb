class Api::CitiesController < ApplicationController
    def index
        render json: {cities: City.all}
    end
end