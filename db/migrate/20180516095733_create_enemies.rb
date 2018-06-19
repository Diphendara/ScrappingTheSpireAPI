class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
      t.boolean :isBoss
      t.boolean :isElite
      t.integer :act_id
      t.integer :maxHP
      t.integer :minHP
      t.string :description
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
