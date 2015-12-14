require 'rails_helper'

RSpec.describe "prestadors/show", type: :view do
  before(:each) do
    @prestador = assign(:prestador, Prestador.create!(
      :nome => "Nome",
      :cpf => "Cpf",
      :telefone => "Telefone",
      :servico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(//)
  end
end
