json.extract! player_card, :id, :user_id, :game_id, :answer_id, :created_at, :updated_at
json.url player_card_url(player_card, format: :json)