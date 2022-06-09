class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :github_id, null: false
      t.string :github_name, null: false
      t.string :github_email, null: false
      t.string :avatar_url, null: false
      t.string :profile_url, null: false
      t.timestamps
    end
  end
end
