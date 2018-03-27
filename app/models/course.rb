class Course < ApplicationRecord
    belongs_to :degree
    belongs_to :university
    belongs_to :course_type

    scope :by_city, -> (city) { where('city = ?', city) } 
    scope :by_study_mode, -> (study_mode) { where('study_mode = ?', study_mode) }
    scope :by_course_type, -> (name) { joins(:course_type).where('course_types.name = ?', name)}
    scope :by_degree, -> (name) { joins(:degree).where('degrees.name = ?', name)}
    scope :by_university, -> (name) { joins(:university).where('universities.name = ?', name)}

    #Course.joins(:degree, :course_type).by_city('kuala lampur').by_study_mode('part time').by_course_type('IT').by_degree('undergraduate').by_university('first uni')
end
