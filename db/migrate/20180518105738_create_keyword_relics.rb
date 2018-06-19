class CreateKeywordRelics < ActiveRecord::Migration[5.2]
  def change
    create_table :keyword_relics do |t|
      t.integer :keyword_id
      t.integer :relic_id

      t.timestamps
    end
  end
end
