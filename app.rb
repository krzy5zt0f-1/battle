require 'sinatra/base'
#require 'shotgun'
#set :session_secret, "whatever"

class Battle < Sinatra::Base
  get '/test'do
    "Testing infrastructure working"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
  run! if app_file == $0
end
