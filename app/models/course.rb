class Course < ApplicationRecord
    belongs_to :degree
    belongs_to :university
    belongs_to :course_type
    belongs_to :city

    
    scope :by_city, -> (city) { joins(:city).where("cities.name IN (?)", city) } 
    scope :by_study_mode, -> (study_mode) { where(study_mode: study_mode) }
    scope :by_course_type, -> (name) { joins(:course_type).where("course_types.name IN (?)", name)}
    scope :by_degree, -> (name) { joins(:degree).where('degrees.name IN (?)', name)}
    scope :by_university, -> (university_type) { joins(:university).where('universities.university_type IN (?)', university_type)}

    #Course.joins(:degree, :course_type).by_city('kuala lampur').by_study_mode('part time').by_course_type('IT').by_degree('undergraduate').by_university('first uni')
end
