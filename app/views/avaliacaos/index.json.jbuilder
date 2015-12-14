json.array!(@avaliacaos) do |avaliacao|
  json.extract! avaliacao, :id, :nota, :informalidade_id
  json.url avaliacao_url(avaliacao, format: :json)
end
