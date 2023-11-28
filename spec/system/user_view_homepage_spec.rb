# frozen_string_literal: true

require 'rails_helper'

describe 'User viewing homepage' do
  it 'sees a welcome message' do
    # Arrange

    # Act
    visit root_path
    # Assert
    expect(page).to have_content('Welcome to AutoWarehousePro!')
  end
end