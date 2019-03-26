class Level < ApplicationRecord
    has_many :tutors
    has_many :students
end
