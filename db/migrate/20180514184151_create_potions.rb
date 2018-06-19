class CreatePotions < ActiveRecord::Migration[5.2]
  def change
    create_table :potions do |t|
      t.string :image
      t.string :name
      t.text :effect

      t.timestamps
    end
  end
end
