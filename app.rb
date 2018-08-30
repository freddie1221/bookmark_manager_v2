require 'sinatra/base'
require './lib/bookmarks'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.prettify_bookmarks(Bookmarks.fetch_bookmarks)
    erb:index
  end

  get '/add' do
    erb:add
  end

  post '/add' do
    Bookmarks.add(params[:url],params[:title])
    redirect '/bookmarks'
  end


  run! if app_file == $0


end
