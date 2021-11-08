feature 'View bookmarks' do
  
  scenario 'visit index page' do
    visit '/'
    expect(page).to have_content "Welcome to Bookmark Manager"
  end

  scenario 'view all bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "BBC"
    expect(page).to have_content "Google"
    expect(page).to have_content "Youtube"
  end

end
