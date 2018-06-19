class Event < ApplicationRecord
  belongs_to :act

  #validations
  validates :name, uniqueness: true
  validates_presence_of :name, :description, :act_id
end
