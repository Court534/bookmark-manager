require 'pg'

class Bookmark
  def self.all
    @connection =
      if ENV['ENVIROMENT'] == 'test'
        PG.connect(dbname: 'bookmark_manager_test')
      else
        PG.connect(dbname: 'bookmark_manager')
      end

    result = @connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url_address)
    @connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url_address}');")
  end
end
