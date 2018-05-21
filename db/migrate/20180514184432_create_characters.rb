class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.text :image
      t.string :name
      t.integer :hp
      t.integer :gold
      t.integer :relic_id
      t.text :description

      t.timestamps
    end
  end
end
