class CreateRelics < ActiveRecord::Migration[5.2]
  def change
    create_table :relics do |t|
      t.integer :rarity
      t.string :name
      t.text :description
      t.text :image
      t.text :lore

      t.timestamps
    end
  end
end
