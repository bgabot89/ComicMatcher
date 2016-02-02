class CreateUserNotifications < ActiveRecord::Migration
  def change
    create_table :user_notifications do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps null: false
    end
  end
end
