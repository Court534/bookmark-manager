# frozen_string_literal: true

feature 'View bookmarks' do
  scenario 'view all bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'https://www.bbc.co.uk'
    expect(page).to have_content 'https://www.google.com'
    expect(page).to have_content 'https://www.youtube.com'
  end
end
