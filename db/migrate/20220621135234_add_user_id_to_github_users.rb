class AddUserIdToGithubUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :github_users, :user, foreign_key: true, null: false
  end
end
