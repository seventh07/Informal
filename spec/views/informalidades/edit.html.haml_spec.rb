require 'rails_helper'

RSpec.describe "informalidades/edit", type: :view do
  before(:each) do
    @informalidade = assign(:informalidade, Informalidade.create!(
      :titulo => "MyString",
      :descricao => "MyString",
      :prestador => nil,
      :cliente => nil
    ))
  end

  it "renders the edit informalidade form" do
    render

    assert_select "form[action=?][method=?]", informalidade_path(@informalidade), "post" do

      assert_select "input#informalidade_titulo[name=?]", "informalidade[titulo]"

      assert_select "input#informalidade_descricao[name=?]", "informalidade[descricao]"

      assert_select "input#informalidade_prestador_id[name=?]", "informalidade[prestador_id]"

      assert_select "input#informalidade_cliente_id[name=?]", "informalidade[cliente_id]"
    end
  end
end
