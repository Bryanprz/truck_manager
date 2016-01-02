require 'rails_helper'

describe '/nuevo_cliente' do
  it 'has a form for adding new Client name' do
    visit '/nuevo_cliente'
    fill_in('Nuevo Cliente', with: 'Acme')
    click_on 'Agregar'
    expect(page).to have_content('Clientes')
    expect(page).to have_content('Acme')
  end
end
