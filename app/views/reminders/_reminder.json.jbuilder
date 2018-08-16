json.extract! reminder, :id, :title, :body, :timings, :private, :location, :user_id, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)