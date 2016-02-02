class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
    	t.belongs_to :user
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
