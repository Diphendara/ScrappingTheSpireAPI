class CreateKeywordPotions < ActiveRecord::Migration[5.2]
  def change
    create_table :keyword_potions do |t|
      t.integer :potion_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
