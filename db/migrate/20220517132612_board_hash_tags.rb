class BoardHashTags < ActiveRecord::Migration[6.1]
  def change
    create_table :board_hash_tags do |t|
      t.integer :board_id
      t.integer :keyword_id
      t.timestamps
    end
  end
end
