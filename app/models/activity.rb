class Activity < ApplicationRecord
  has_many :checklists
  has_many :users, through: :checklists

end
