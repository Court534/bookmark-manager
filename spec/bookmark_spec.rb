# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
        expect(bookmarks).to eq [
          "http://www.makersacademy.com", 
          "http://www.twitter.com",
          "http://www.google.com" 
        ]
    end
  end
end




# expect(bookmarks).to include "https://www.google.com"
#       # expect(bookmarks).to include "https://www.twitter.com"