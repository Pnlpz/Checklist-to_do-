class Activity < ApplicationRecord
  has_many :checklists
  has_many :users, through: :checklists

  def completed?(user)
    checklists.where(user: user).any? ? true : false
  end

end
