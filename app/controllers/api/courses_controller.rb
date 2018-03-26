class Api::CoursesController < ApplicationController
    def index
        render json: {courses: Course.all}
    end
end