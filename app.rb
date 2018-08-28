require 'sinatra/base'
# require './lib/bookmark'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end


  run! if app_file == $0


end
