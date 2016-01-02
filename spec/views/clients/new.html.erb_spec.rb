require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new())
  end

  it "renders new client form" do
    visit '/nuevo_cliente'
    fill_in('Nuevo Cliente', with: 'Acme')
    click_on 'Agregar'
    expect(page).to have_content('Clientes')
    expect(page).to have_content('Acme')
  end
end
