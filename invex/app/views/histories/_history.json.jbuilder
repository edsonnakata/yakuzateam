json.extract! history, :id, :titulo, :nome, :descricao, :user_id, :created_at, :updated_at
json.url history_url(history, format: :json)
