class Classroom < ApplicationRecord
    belongs_to :branch
    belongs_to :licensee
    # belongs_to :teacher
end
