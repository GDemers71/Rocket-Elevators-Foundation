class Battery < ApplicationRecord
    belongs_to :building
    has_many :columns
    belongs_to :employee
end