class CreateModifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :modifiers, :id => false do |t|
      t.primary_key :id
      t.string :name
      t.text :description
      t.boolean :isDebuff

      t.timestamps
    end
  end
end
