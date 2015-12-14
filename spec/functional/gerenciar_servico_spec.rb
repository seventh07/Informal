# coding: utf-8


require 'rails_helper'
require 'spec_helper'

feature 'gerenciar servico' do

  scenario 'incluir servico' do # , :js => true  do

    visit new_servico_path
    preencher_e_verificar_servico
  end

  scenario 'alterar servico' do #, :js => true  do

    servico = FactoryGirl.create(:servico)
    visit edit_servico_path(servico)
    preencher_e_verificar_servico
  end

   scenario 'excluir servico' do #, :javascript => true  do

    servico = FactoryGirl.create(:servico)
    visit servicos_path
    click_on 'Destroy'
  end

   def preencher_e_verificar_servico

      fill_in 'Nome', :with => "Alvenaria"
      click_button 'Save'

      expect(page).to have_content 'Nome: Alvenaria'
   end
end
