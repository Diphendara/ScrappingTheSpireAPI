class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.primary_key :id
      t.string :energyCost
      t.string :type
      t.string :deck
      t.string :debuffs
      t.string :buff

      t.timestamps
    end
  end
end
