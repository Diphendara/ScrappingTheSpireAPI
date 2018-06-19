class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :category
      t.integer :deck
      t.string :description
      t.string :energyCost
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
