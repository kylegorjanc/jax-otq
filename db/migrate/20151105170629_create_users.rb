class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_type
      t.integer :session_id
      t.string :username
      t.string :password
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
