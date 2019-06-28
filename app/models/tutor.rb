class Tutor < ApplicationRecord
    has_many :lessons
    has_many :students, through: :lessons
    belongs_to :level
    belongs_to :subject

    has_secure_password

    validates :name, length: {minimum: 3}
end
