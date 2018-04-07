class Api::FiltersController < ApplicationController
    def index
        # @filters = Filter.
        render json: {filters: Filter.all}
    end
end