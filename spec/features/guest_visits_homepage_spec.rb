require "spec_helper"

feature "Guest Visits Homepage" do 

  scenario "and learns about the app" do 
    visit root_path
    expect(page).to have_css 'h1', text: "The amazing twitter searching thing"
    expect(page).to have_css 'header *[data-role="title"]', text: "Twitter Search"

    expect(page).to have_css 'form'
  end


end