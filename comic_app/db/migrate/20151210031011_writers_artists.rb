class WritersArtists < ActiveRecord::Migration
  def change
  	add_column :users, :writer, :string
  	add_column :users, :artist, :string
  end
end
