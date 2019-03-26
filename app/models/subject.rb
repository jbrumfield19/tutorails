class Subject < ApplicationRecord
    has_many :lessons
    has_many :tutors
    has_many :students

end
