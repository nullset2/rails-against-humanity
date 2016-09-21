json.extract! game_entry, :id, :user_id, :game_id, :created_at, :updated_at
json.url game_entry_url(game_entry, format: :json)