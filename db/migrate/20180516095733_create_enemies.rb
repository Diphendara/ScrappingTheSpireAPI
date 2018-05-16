class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies, :id => false do |t|
      t.primary_key :id
      t.integer :minHP
      t.integer :maxHP
      t.string :location
      t.string :appearance
      t.boolean :isElite
      t.boolean :isBoss

      t.timestamps
    end
  end
end
