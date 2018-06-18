class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
      t.string :name
      t.string :description
      t.integer :minHP
      t.integer :maxHP
      t.string :image
      t.boolean :isElite
      t.boolean :isBoss
      t.integer :act_id

      t.timestamps
    end
  end
end
