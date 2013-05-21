require "spec_helper"

feature "User Searches Twitter" do 

  scenario "and submits a search to twitter with a hashtag" do 
    visit root_path
    search_twitter "#rails"

    expect(current_path).to eq "/searches/rails"
    expect(page).to have_css 'li', text: "rails"

    within 'ul' do 
      expect(page).to have_css 'li', count: 15
    end
  end

  scenario "user submits a search without a hashtag and it gets appended" do 
    visit root_path
    search_twitter "rails"

    expect(current_path).to eq "/searches/rails"
    expect(page).to have_css 'li', text: "rails"

    within 'ul' do 
      expect(page).to have_css 'li', count: 15
    end
  end

  scenario "user submits a search and changes it on the search show page" do 
    visit root_path
    search_twitter "#rails"

    expect(current_path).to eq "/searches/rails"

    search_twitter "#ruby"
    expect(current_path).to eq "/searches/ruby"
  end


end