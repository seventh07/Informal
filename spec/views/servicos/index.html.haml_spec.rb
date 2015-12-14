require 'rails_helper'

RSpec.describe "servicos/index", type: :view do
  before(:each) do
    assign(:servicos, [
      Servico.create!(
        :nome => "Nome"
      ),
      Servico.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of servicos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
