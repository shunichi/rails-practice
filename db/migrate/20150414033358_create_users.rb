class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :github_id, null: false
      t.string :name
      t.string :email
      t.string :image
      t.text :auth_hash

      t.timestamps null: false
    end
    add_index :users, :github_id, unique: true
  end
end
