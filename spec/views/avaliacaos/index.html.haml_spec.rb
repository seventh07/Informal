require 'rails_helper'

RSpec.describe "avaliacaos/index", type: :view do
  before(:each) do
    assign(:avaliacaos, [
      Avaliacao.create!(
        :nota => 1.5,
        :informalidade => nil
      ),
      Avaliacao.create!(
        :nota => 1.5,
        :informalidade => nil
      )
    ])
  end

  it "renders a list of avaliacaos" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
