class Api::CoursesController < ApplicationController
    def index
        render json: {courses: Course.all}
    end

    def search 
        courses = Course.by_city(params[:city]).
                         by_study_mode(params[:study_mode]).
                         by_course_type(params[:course_type]).
                         by_degree(params[:degree]).
                         by_university(params[:university]).to_json(:include => { :degree => { :only => :name },
                                                                                  :course_type => { :only => :name },
                                                                                  :university => {:only => [:name, :university_type]} })
        final_courses = JSON.parse(courses)

        render json: {courses: final_courses}                               
    end
end