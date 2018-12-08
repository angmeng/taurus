class Licensee < ApplicationRecord
    belongs_to :branch
    has_many :classrooms
end
