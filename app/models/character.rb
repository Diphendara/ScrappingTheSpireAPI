class Character < ApplicationRecord
    belongs_to :relic

    # validations
    validates_presence_of :hp, :gold, :relic_id, :description
end
