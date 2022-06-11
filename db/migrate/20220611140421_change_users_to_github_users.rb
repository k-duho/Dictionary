class ChangeUsersToGithubUsers < ActiveRecord::Migration[6.1]
  def change
    rename_table :users, :github_users
  end
end
