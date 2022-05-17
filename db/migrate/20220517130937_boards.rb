class Boards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.timestamps
    end
  end
end