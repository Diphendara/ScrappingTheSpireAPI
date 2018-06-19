class Relic < ApplicationRecord
  enum rarity: {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 5, "Shop" => 6}
  has_and_belongs_to_many :keywords

  # validations
  validates :name, uniqueness: true
  validates_presence_of :image, :name, :rarity, :description, :lore
end
