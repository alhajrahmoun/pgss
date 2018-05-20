class Api::CoursesController < ApplicationController
    def index
        render json: {courses: Course.all}
    end

    def search 
        courses = Course.by_city(params[:city].split(',')).
                         by_study_mode(params[:study_mode].split(',')).
                         by_course_type(params[:course_type].split(',')).
                         by_degree(params[:degree].split(',')).
                         by_university(params[:university].split(',')).to_json(:include => { :degree => { :only => :name },
                                                                                  :filter => {:only => [:name, :filter_type]},
                                                                                  :city => { :only => :name },
                                                                                  :course_type => { :only => :name },
                                                                                  :university => {:only => [:name, :university_type]} })
        final_courses = JSON.parse(courses)

        render json: {courses: final_courses}                          
    end
end