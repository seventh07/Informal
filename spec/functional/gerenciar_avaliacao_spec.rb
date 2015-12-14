# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar avaliacao' do

before(:each) do
  @informalidade = FactoryGirl.create(:informalidade, titulo: "Conserto Janela")
end

  scenario 'incluir avaliacao' do # , :js => true  do

    visit new_avaliacao_path
    preencher_e_verificar_avaliacao
  end

  scenario 'alterar avaliacao' do #, :js => true  do

    avaliacao = FactoryGirl.create(:avaliacao)
    visit edit_avaliacao_path(avaliacao)
    preencher_e_verificar_avaliacao
  end

   scenario 'excluir avaliacao' do #, :javascript => true  do

    avaliacao = FactoryGirl.create(:avaliacao)
    visit avaliacaos_path
    click_on 'Excluir'
  end

   def preencher_e_verificar_avaliacao

      fill_in 'Nota', :with => 9.5
      select "Conserto Janela", from: "Informalidade"
      #fill_in 'Informalidade', :with => "45"
      click_button 'Save'

      expect(page).to have_content 'Nota: 9.5'
      expect(page).to have_content 'Informalidade: Conserto Janela'
     
   end
end
