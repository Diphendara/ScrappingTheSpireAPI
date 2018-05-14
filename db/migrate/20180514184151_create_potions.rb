class CreatePotions < ActiveRecord::Migration[5.2]
  def change
    create_table :potions, :id => false do |t|
      t.primary_key :id
      t.string :name
      t.text :effect

      t.timestamps
    end
  end
end
