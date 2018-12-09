class Branch < ApplicationRecord
    has_one :licensee
    # has_many :classrooms
    has_many :teachers
    
end
