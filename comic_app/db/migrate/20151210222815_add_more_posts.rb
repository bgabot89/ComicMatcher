class AddMorePosts < ActiveRecord::Migration
  def change
  	add_column :users, :posts, :text
  	add_column :users, :sex, :string
  	add_column :users, :about, :text
  	add_column :users, :tech, :text
  end
end
