class CreateCardsKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_keywords do |t|
      t.integer :card_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
