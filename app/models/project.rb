class Project < ApplicationRecord
  validates :project_name, :presence => true
  validates :description, :presence => true
  validates :link, :presence => true
end
