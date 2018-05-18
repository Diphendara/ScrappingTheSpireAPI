class CreateKeywordsPotions < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords_potions do |t|
      t.integer :potion_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
