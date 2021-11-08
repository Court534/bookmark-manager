feature 'View bookmarks' do
  scenario 'visit index page' do
    visit '/'
    expect(page).to have_content "Welcome to Bookmark Manager"
  end
end