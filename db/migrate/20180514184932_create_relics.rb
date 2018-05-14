class CreateRelics < ActiveRecord::Migration[5.2]
  def change
    create_table :relics, :id => false do |t|
      t.primary_key :id
      t.string :name
      t.integer :rarity
      t.text :description
      t.text :lore

      t.timestamps
    end
  end
end
