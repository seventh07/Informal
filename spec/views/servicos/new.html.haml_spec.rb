require 'rails_helper'

RSpec.describe "servicos/new", type: :view do
  before(:each) do
    assign(:servico, Servico.new(
      :nome => "MyString"
    ))
  end

  it "renders new servico form" do
    render

    assert_select "form[action=?][method=?]", servicos_path, "post" do

      assert_select "input#servico_nome[name=?]", "servico[nome]"
    end
  end
end
