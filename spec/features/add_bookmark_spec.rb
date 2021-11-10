feature 'Adding bookmarks' do
  scenario 'click add bookmark button' do
    create_update_test_database
    visit '/bookmarks'
    fill_in('url', with: 'http://www.youtube.com')
    click_button 'Submit'
    expect(page).to have_content 'http://www.youtube.com'
  end
end
