require 'sinatra/base'
require './lib/bookmarks'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb:index

  end


  run! if app_file == $0


end
