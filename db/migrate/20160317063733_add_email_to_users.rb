class AddEmailToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string, index: true, uniq: true
  	add_column :users, :password_digest, :string
  end
end
