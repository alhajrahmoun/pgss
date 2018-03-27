class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :city, :study_mode

  belongs_to :university, :course_type, :degree
end
