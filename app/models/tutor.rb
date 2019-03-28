class Tutor < ApplicationRecord
    has_many :lessons
    has_many :students, through: :lessons
    belongs_to :level
    belongs_to :subject
    
end
