require 'rails_helper'

RSpec.describe "servicos/edit", type: :view do
  before(:each) do
    @servico = assign(:servico, Servico.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit servico form" do
    render

    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do

      assert_select "input#servico_nome[name=?]", "servico[nome]"
    end
  end
end
