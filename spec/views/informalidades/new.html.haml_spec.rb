require 'rails_helper'

RSpec.describe "informalidades/new", type: :view do
  before(:each) do
    assign(:informalidade, Informalidade.new(
      :titulo => "MyString",
      :descricao => "MyString",
      :prestador => nil,
      :cliente => nil
    ))
  end

  it "renders new informalidade form" do
    render

    assert_select "form[action=?][method=?]", informalidades_path, "post" do

      assert_select "input#informalidade_titulo[name=?]", "informalidade[titulo]"

      assert_select "input#informalidade_descricao[name=?]", "informalidade[descricao]"

      assert_select "input#informalidade_prestador_id[name=?]", "informalidade[prestador_id]"

      assert_select "input#informalidade_cliente_id[name=?]", "informalidade[cliente_id]"
    end
  end
end
