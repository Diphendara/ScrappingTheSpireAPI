class Event < ApplicationRecord
  belongs_to :act

  #validations
  validates_presence_of :name, :description, :act_id
end
