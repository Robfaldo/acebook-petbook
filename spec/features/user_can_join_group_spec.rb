require 'rails_helper'

RSpec.feature "User can join a group", type: :feature do
  scenario 'sucessfully' do

    sign_up_successfully

    click_link 'Social capybaras'
    click_link 'Join!'
    expect(page).to have_content "Members: Millie"
  end
end
