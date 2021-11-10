require 'pg'

class Bookmark
  def self.all
    connection =
      if ENV['ENVIROMENT'] == 'test'
        PG.connect(dbname: 'bookmark_manager_test')
      else
        PG.connect(dbname: 'bookmark_manager')
      end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark }
  end

  def self.create(title, url_address)
    connection =
      if ENV['ENVIROMENT'] == 'test'
        PG.connect(dbname: 'bookmark_manager_test')
      else
        PG.connect(dbname: 'bookmark_manager')
      end
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url_address}');")
  end
end
