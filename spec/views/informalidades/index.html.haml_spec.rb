require 'rails_helper'

RSpec.describe "informalidades/index", type: :view do
  before(:each) do
    assign(:informalidades, [
      Informalidade.create!(
        :titulo => "Titulo",
        :descricao => "Descricao",
        :prestador => nil,
        :cliente => nil
      ),
      Informalidade.create!(
        :titulo => "Titulo",
        :descricao => "Descricao",
        :prestador => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of informalidades" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
