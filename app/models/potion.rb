class Potion < ApplicationRecord
  has_and_belongs_to_many :keywords

  # validations
  validates_presence_of :image, :name, :effect
end
