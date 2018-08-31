require 'sinatra/base'
require './lib/bookmarks'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.prettify_bookmarks(Bookmarks.fetch_bookmarks)
    erb:bookmarks
  end

  post '/bookmarks' do
    redirect '/deleted'
  end

  get '/deleted' do
    'Success!'
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
