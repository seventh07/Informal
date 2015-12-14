require 'rails_helper'

RSpec.describe "avaliacaos/edit", type: :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :nota => 1.5,
      :informalidade => nil
    ))
  end

  it "renders the edit avaliacao form" do
    render

    assert_select "form[action=?][method=?]", avaliacao_path(@avaliacao), "post" do

      assert_select "input#avaliacao_nota[name=?]", "avaliacao[nota]"

      assert_select "input#avaliacao_informalidade_id[name=?]", "avaliacao[informalidade_id]"
    end
  end
end
