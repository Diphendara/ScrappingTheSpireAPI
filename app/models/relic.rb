class Relic < ApplicationRecord
  enum rarity: {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 6, "Shop" => 6}
  has_and_belongs_to_many :keywords

  # validations
  validates_presence_of :name, :rarity, :description, :lore
end
