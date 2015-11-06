class NewUserSchema < ActiveRecord::Migration
  def change
  	rename_column :users, :password, :password_digest
  	rename_column :users, :password_confirmation, :password_confirmation_digest
  end
end
