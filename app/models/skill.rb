class Skill < ApplicationRecord
  validates :skill_name, :presence => true
  validates :skill_ability, :presence => true
end
