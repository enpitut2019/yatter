class Project < ApplicationRecord
    belongs_to :project_status
    has_many :comments
end
