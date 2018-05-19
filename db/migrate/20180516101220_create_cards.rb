class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :energyCost
      t.integer :type
      t.integer :deck

      t.timestamps
    end
  end
end
