json.array!(@prestadors) do |prestador|
  json.extract! prestador, :id, :nome, :cpf, :telefone, :servico_id
  json.url prestador_url(prestador, format: :json)
end
