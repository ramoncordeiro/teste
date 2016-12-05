json.extract! localizacao, :id, :nome, :lat, :long, :created_at, :updated_at
json.url localizacao_url(localizacao, format: :json)