# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente' do # , :js => true  do

    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  scenario 'alterar cliente' do #, :js => true  do

    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente
  end

   scenario 'excluir cliente' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente)
    visit clientes_path
    click_on 'Destroy'
  end

   def preencher_e_verificar_cliente

      fill_in 'Nome', :with => "Adrian"
      fill_in 'Cpf', :with => "112233"
      fill_in 'Telefone', :with => "445566"
      click_button 'Save'

      expect(page).to have_content 'Nome: Adrian'
      expect(page).to have_content 'Cpf: 112233'
      expect(page).to have_content 'Telefone: 445566'      
   end
end
