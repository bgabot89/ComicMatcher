class AddTypeofPerson < ActiveRecord::Migration
  def change
  	add_column :users, :person, :string
  end
end
