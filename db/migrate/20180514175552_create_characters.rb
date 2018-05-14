class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters, :id => false do |t|
      t.integer :id
      t.integer :hp
      t.integer :gold
      t.integer :start_relic
      t.text :description

      t.timestamps
    end
  end
end
