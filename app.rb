require 'sinatra/base'
require './lib/player'
#require 'shotgun'
#set :session_secret, "whatever"

class Battle < Sinatra::Base
  #enable :sessions

  get '/test'do
    "Testing infrastructure working"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player1.attack($player2)
    erb(:attack)
  end
  run! if app_file == $0
end
