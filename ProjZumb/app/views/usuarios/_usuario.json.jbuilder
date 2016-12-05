json.extract! usuario, :id, :nome, :idade, :sexo, :localizacao_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)