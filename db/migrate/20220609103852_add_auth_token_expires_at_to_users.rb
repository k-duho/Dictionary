class AddAuthTokenExpiresAtToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :auth_token_expires_at, :datetime
  end
end
