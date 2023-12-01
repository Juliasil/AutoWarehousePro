# frozen_string_literal: true

require 'rails_helper'

describe 'User viewing homepage' do
  it 'sees a welcome message' do
    # Arrange
    puts "Before creating warehouses: #{AutoWarehousePro.all.inspect}"
    # Act
    visit root_path
    # Assert
    expect(page).to have_content('AutoWarehousePro')
  end

  it 'and sees Visitor viewing warehouses' do
    # Arrange
    AutoWarehousePro.create(name: 'Galpão BH', code: 'SDU', area: 40_000, city: 'Belo Horizonte')
    AutoWarehousePro.create(name: 'Galpão SC', code: 'GIG', area: 60_000, city: 'Santa Catarina')

    puts "After creating warehouses: #{AutoWarehousePro.all.inspect}"
    # Act
    visit root_path
    # Assert
    expect(page).to have_content('Galpão BH')
    expect(page).to have_content('Código do Aeroporto: SDU')
    expect(page).to have_content(/Área:\s*40000\s*m²/)
    expect(page).to have_content('Cidade: Belo Horizonte')

    expect(page).to have_content('Galpão SC')
    expect(page).to have_content('Código do Aeroporto: GIG')
    expect(page).to have_content(/Área:\s*40000\s*m²/)
    expect(page).to have_content('Cidade: Santa Catarina')
  end
end