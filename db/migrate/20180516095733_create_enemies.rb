class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
      t.integer :minHP
      t.integer :maxHP
      t.string :appearance
      t.boolean :isElite
      t.boolean :isBoss
      t.integer :act_id

      t.timestamps
    end
  end
end
