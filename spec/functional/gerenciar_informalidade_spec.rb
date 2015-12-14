# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar informalidade' do

before(:each) do
  @cliente = FactoryGirl.create(:cliente, nome: "Adrian")
  @prestador = FactoryGirl.create(:prestador, nome: "Jao")
end

  scenario 'incluir informalidade' do # , :js => true  do

    visit new_informalidade_path
    preencher_e_verificar_informalidade
  end

  scenario 'alterar informalidade' do #, :js => true  do

    informalidade = FactoryGirl.create(:informalidade)
    visit edit_informalidade_path(informalidade)
    preencher_e_verificar_informalidade
  end

   scenario 'excluir informalidade' do #, :javascript => true  do

    informalidade = FactoryGirl.create(:informalidade)
    visit informalidades_path
    click_on 'Destroy'
  end

   def preencher_e_verificar_informalidade

      fill_in 'Titulo', :with => "Conserto de Janela"
      fill_in 'Descricao', :with => "Preciso de alguem para consertar janelas"
      select "Adrian", from: "Cliente"
      select "Jao", from: "Prestador"
      #fill_in 'Cliente', :with => "Adrian"
      #fill_in 'Prestador', :with => "Jao"
      click_button 'Save'

      expect(page).to have_content 'Cliente: Adrian'
      expect(page).to have_content 'Prestador: Jao'
      expect(page).to have_content 'Titulo: Conserto de Janela'
      expect(page).to have_content 'Descricao: Preciso de alguem para consertar janelas'
   end
end
