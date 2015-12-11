class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
    	t.belongs_to :user
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
