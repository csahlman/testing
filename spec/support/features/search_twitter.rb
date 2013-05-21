module Features 
  def search_twitter query
    fill_in "Search", with: query
    click_button "Search!"
  end
end