class CreateRelicKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :relics_keywords do |t|
      t.integer :relic_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
