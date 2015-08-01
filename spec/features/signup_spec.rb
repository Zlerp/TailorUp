require 'rails_helper'

RSpec.describe "Sign up Company" do
  it "Sign Up successfully" do
    visit(root_path)

    click_link("Company")
    click_link("signup")

    fill_in('Email', with: 'ed@gmail.com')
    fill_in('Password', with: 'ilove2code')
    fill_in('Password confirmation', with: 'ilove2code')
    click_button('Sign up')

    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
