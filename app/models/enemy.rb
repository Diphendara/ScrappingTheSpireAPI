class Enemy < ApplicationRecord
  belongs_to :act

  # validations
  validates :name, uniqueness: true
  validates_presence_of :name, :description, :minHP, :maxHP, :image, :isElite, :isBoss, :act_id
end
