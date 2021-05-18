class Study < ApplicationRecord
    validates :name, :drug, presence: true
    validates :age, numericality: {greater_than: 7}
    validates :phase, numericality: {less_than_or_equal_to: 5}

    belongs_to :study_group

    has_many :enrollments
    has_many :subjects, through: :enrollments

end
