# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec(
        "insert into bookmarks (url) values ('http://www.makersacademy.com');",
      )
      connection.exec(
        "insert into bookmarks (url) values ('http://www.twitter.com');",
      )
      connection.exec(
        "insert into bookmarks (url) values ('http://www.google.com');",
      )

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.twitter.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.create' do
    let(:url) { 'http://bbc.co.uk' }
    it 'creates a new bookmark' do
      Bookmark.create(url)
      bookmarks = Bookmark.all
      expect(bookmarks).to include(url)
    end
  end
end

# expect(bookmarks).to include "https://www.google.com"
#       # expect(bookmarks).to include "https://www.twitter.com"
