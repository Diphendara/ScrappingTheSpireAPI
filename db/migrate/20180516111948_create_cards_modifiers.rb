class CreateCardsModifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_modifiers, :id => false do |t|
      t.primary_key :id
      t.integer :id_Card
      t.integer :id_modifier

      t.timestamps
    end
  end
end
