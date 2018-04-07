class Api::FiltersController < ApplicationController
    def index
        # @filters = Filter.
        render json: {filters: Filter.select(:id, :name, :filter_type).group_by(&:filter_type)}
    end
end