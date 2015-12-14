json.array!(@informalidades) do |informalidade|
  json.extract! informalidade, :id, :titulo, :descricao, :prestador_id, :cliente_id
  json.url informalidade_url(informalidade, format: :json)
end
