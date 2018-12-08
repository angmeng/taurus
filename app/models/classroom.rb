class Classroom < ApplicationRecord
    belongs_to :branch
    belongs_to :licensee
end
