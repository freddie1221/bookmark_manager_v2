require 'sinatra/base'
# require './lib/bookmark'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do 
    'Hello world'
  end


  run! if app_file == $0


end
