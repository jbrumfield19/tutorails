class Session < ApplicationRecord
    belongs_to :students
    belongs_to :tutors
    belongs_to :locations
    belongs_to :subjects
end
