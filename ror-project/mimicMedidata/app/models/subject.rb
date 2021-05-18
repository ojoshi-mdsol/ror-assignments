class Subject < ApplicationRecord
    has_many :enrollments
    has_many :studies, through: :enrollments
end
