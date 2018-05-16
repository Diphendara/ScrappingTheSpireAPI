class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards, :id => false do |t|
      t.primary_key :id
      t.string :energyCost
      t.string :type
      t.string :deck

      t.timestamps
    end
  end
end
