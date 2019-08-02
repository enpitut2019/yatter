class Project < ApplicationRecord
    belongs_to :project_status
    belongs_to :user
end
