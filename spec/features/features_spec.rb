require 'spec_helper'

RSpec.feature "Entry form"  do
  scenario "displays players names" do
    visit("/")

    fill_in :name1, with: 'Mitch'
    fill_in :name2, with: 'Mica'
    click_button 'submit'

    expect(page).to have_content('Mitch')
    expect(page).to have_content('Mica')
  end
end