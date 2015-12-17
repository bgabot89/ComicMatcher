json.array!(@user_notifications) do |user_notification|
  json.extract! user_notification, :id, :name, :email, :login
  json.url user_notification_url(user_notification, format: :json)
end
