require 'pg'

feature 'View bookmarks' do
  scenario 'view all bookmarks' do
    create_update_test_database
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.twitter.com'
  end
end
