feature 'Adding bookmarks' do
  scenario 'click add bookmark button' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("insert into bookmarks (url) values ('http://www.makersacademy.com');")
      connection.exec("insert into bookmarks (url) values ('http://www.twitter.com');")
      connection.exec("insert into bookmarks (url) values ('http://www.google.com');")
    visit '/bookmarks'
    click_button 'Submit'
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.youtube.com');")
    expect(page).to have_content 'http://www.youtube.com'
  end
end
