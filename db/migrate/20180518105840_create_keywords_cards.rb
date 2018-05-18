class CreateKeywordsCards < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords_cards do |t|
      t.integer :card_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
