class Users < ActiveRecord::Migration[6.1]
  def change
    create_table "users", force: :cascade do |t|
      t.string :name, null: false
      t.string :mail, null: false
      t.string :password_digest, null: false
      t.string :remember_token
      t.timestamps
    end
  end
end
