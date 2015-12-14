require 'rails_helper'

RSpec.describe "avaliacaos/new", type: :view do
  before(:each) do
    assign(:avaliacao, Avaliacao.new(
      :nota => 1.5,
      :informalidade => nil
    ))
  end

  it "renders new avaliacao form" do
    render

    assert_select "form[action=?][method=?]", avaliacaos_path, "post" do

      assert_select "input#avaliacao_nota[name=?]", "avaliacao[nota]"

      assert_select "input#avaliacao_informalidade_id[name=?]", "avaliacao[informalidade_id]"
    end
  end
end
