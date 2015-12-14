require 'rails_helper'

RSpec.describe "avaliacaos/show", type: :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :nota => 1.5,
      :informalidade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
