class CreateKeywordsRelics < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords_relics do |t|
      t.integer :relic_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
