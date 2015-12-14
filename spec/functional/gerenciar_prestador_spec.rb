# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar prestador' do

before(:each) do
  @servico = FactoryGirl.create(:servico, nome: "Alvenaria")
end

  scenario 'incluir prestador' do # , :js => true  do

    visit new_prestador_path
    preencher_e_verificar_prestador
  end

  scenario 'alterar prestador' do #, :js => true  do

    prestador = FactoryGirl.create(:prestador)
    visit edit_prestador_path(prestador)
    preencher_e_verificar_prestador
  end

   scenario 'excluir prestador' do #, :javascript => true  do

    prestador = FactoryGirl.create(:prestador)
    visit prestadors_path
    click_on 'Destroy'
  end

   def preencher_e_verificar_prestador

      fill_in 'Nome', :with => "Jao"
      fill_in 'Cpf', :with => "723"
      fill_in 'Telefone', :with => "4498"
      select "Alvenaria", from: "Servico"
      #fill_in 'Servico', :with => "Alvenaria"
      click_button 'Save'

      expect(page).to have_content 'Nome: Jao'
      expect(page).to have_content 'Cpf: 723'
      expect(page).to have_content 'Telefone: 4498'
      expect(page).to have_content 'Servico: Alvenaria'      
   end
end
