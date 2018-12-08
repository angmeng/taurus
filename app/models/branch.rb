class Branch < ApplicationRecord
    has_one :licensee
    has_many :classrooms, through: :licensee
    
end
