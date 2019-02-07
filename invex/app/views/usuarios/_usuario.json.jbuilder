json.extract! usuario, :id, :nome, :email, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
