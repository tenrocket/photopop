class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :provider, :string
  	add_column :users, :uid, :string
  	add_column :users, :oauth_token, :string
  	add_column :users, :oauth_expires_at, :datetime]
  	remove_column :users, :facebook_token
  end
end
