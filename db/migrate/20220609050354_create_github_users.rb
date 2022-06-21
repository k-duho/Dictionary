class CreateGithubUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :github_users do |t|
      t.integer :github_id, null: false
      t.string :github_name, null: false
      t.string :github_email, null: false
      t.string :avatar_url, null: false
      t.string :profile_url, null: false
      t.string :auth_token
      t.datetime :auth_token_expires_at
      t.timestamps
    end
  end
end
