class Card < ApplicationRecord
  enum type: {"Attack" => 0, "Skill" => 1, "Power" => 2, "Status" => 3, "Curse" => 4}
  enum deck: {"Green" => 0, "Red" => 1, "Blue" => 2, "Colorless" => 3, "Curses" => 4, "States" => 5}

  has_and_belongs_to_many :keywords

  #validations
  validates :name, uniqueness: {scope: :deck, message: "The card should be unique for each deck"}
  validates_presence_of :image, :energyCost, :name, :category, :deck, :description
end
