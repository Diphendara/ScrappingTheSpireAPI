class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :image
      t.string :energyCost
      t.string :name
      t.integer :category
      t.integer :deck
      t.string :description

      t.timestamps
    end
  end
end
