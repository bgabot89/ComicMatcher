class AddUrltoPublishedWorks < ActiveRecord::Migration
  def change
  	add_column :published_works, :url, :text
  end
end
