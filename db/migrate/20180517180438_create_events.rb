class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.integer :act_id
      t.timestamps
    end
  end
end
