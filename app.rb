require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    "Welcome to Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = [
      "https://www.bbc.co.uk/",
      "https://www.google.com/",
      "https://www.youtube.com/"
     ]
    @bookmarks.join
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
  