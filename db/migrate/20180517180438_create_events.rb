class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :act_id
      t.text :description
      t.text :name

      t.timestamps
    end
  end
end
