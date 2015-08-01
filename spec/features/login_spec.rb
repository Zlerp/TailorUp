require 'rails_helper'

RSpec.describe "Logging into Company" do
  it "log in successfully" do
    visit(root_path)

    click_link("Company")
    click_link("Login")

    fill_in('Email', with: 'lporter630@gmail.com')
    fill_in('Password', with: 'ilove2code')
    click_button('Log in')

    expect(page).to have_content('Signed in successfully.')
  end
end
