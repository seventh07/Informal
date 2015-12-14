require 'rails_helper'

RSpec.describe "prestadors/index", type: :view do
  before(:each) do
    assign(:prestadors, [
      Prestador.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :servico => nil
      ),
      Prestador.create!(
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :servico => nil
      )
    ])
  end

  it "renders a list of prestadors" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
