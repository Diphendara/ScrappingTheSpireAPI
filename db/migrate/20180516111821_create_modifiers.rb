class CreateModifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :modifiers do |t|
      t.string :name
      t.text :description
      t.boolean :isDebuff

      t.timestamps
    end
  end
end
