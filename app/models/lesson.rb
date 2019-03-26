class Lesson < ApplicationRecord
    belongs_to :student
    belongs_to :tutor
    belongs_to :location
    belongs_to :subject
end
