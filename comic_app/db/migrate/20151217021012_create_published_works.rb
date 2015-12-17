class CreatePublishedWorks < ActiveRecord::Migration
  def change
    create_table :published_works do |t|
      t.string :name
      t.string :description
      t.string :writer
      t.string :artist

      t.timestamps null: false
    end
  end
end
