class CreatePotions < ActiveRecord::Migration[5.2]
  def change
    create_table :potions do |t|
      t.string :name
      t.text :effect
      t.integer :keyword_id
      t.timestamps
    end
  end
end
