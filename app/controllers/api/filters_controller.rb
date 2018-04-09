class Api::FiltersController < ApplicationController
    def index
        #render json: {filters: Filter.select(:id, :name, :filter_type).group_by(&:filter_type)}
        filters = {}
        filters[:course_types] = CourseType.select(:id, :name)
        filters[:degrees] = Degree.select(:id, :name)
        filters[:universities] = University.select(:id, :name, :university_type)
        filters[:study_modes] = Filter.select(:id, :name).where(filter_type: 'study_mode')
        filters[:cities] = City.select(:id, :name)
        render json: {filters: filters}
    end
end