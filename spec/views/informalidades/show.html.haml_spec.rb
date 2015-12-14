require 'rails_helper'

RSpec.describe "informalidades/show", type: :view do
  before(:each) do
    @informalidade = assign(:informalidade, Informalidade.create!(
      :titulo => "Titulo",
      :descricao => "Descricao",
      :prestador => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
