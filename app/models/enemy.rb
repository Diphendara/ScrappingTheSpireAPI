class Enemy < ApplicationRecord
    belongs_to :act

    # validations
    validates_presence_of :minHP, :maxHP, :appearance, :isElite, :isBoss, :act_id
end
