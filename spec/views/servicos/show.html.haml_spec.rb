require 'rails_helper'

RSpec.describe "servicos/show", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
