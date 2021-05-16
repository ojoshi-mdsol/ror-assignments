class Study < ApplicationRecord
    validates :name, :drug, presence: true
    validates :age, numericality: {greater_than: 7}
    validates :phase, numericality: {less_than_or_equal_to: 5}

    has_many :study_group
end
