def create_update_test_database
  @connection = PG.connect(dbname: 'bookmark_manager_test')

  @connection.exec(
    "INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');",
  )
  @connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com');")
  @connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.twitter.com');")
end
