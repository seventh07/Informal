require 'rails_helper'

RSpec.describe "prestadors/edit", type: :view do
  before(:each) do
    @prestador = assign(:prestador, Prestador.create!(
      :nome => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :servico => nil
    ))
  end

  it "renders the edit prestador form" do
    render

    assert_select "form[action=?][method=?]", prestador_path(@prestador), "post" do

      assert_select "input#prestador_nome[name=?]", "prestador[nome]"

      assert_select "input#prestador_cpf[name=?]", "prestador[cpf]"

      assert_select "input#prestador_telefone[name=?]", "prestador[telefone]"

      assert_select "input#prestador_servico_id[name=?]", "prestador[servico_id]"
    end
  end
end
