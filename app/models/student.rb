class Student < ApplicationRecord
    has_many :lessons
    has_many :tutors, through: :lessons
    belongs_to :level
    has_many :subject
end
