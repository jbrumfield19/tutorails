class Student < ApplicationRecord
    has_many :lessons
    has_many :tutors, through: :lessons
    belongs_to :level
    has_many :subject

    # has_secure_password

    # validates :name, length: {minimum: 3}
end
