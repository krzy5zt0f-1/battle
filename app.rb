require 'sinatra/base'
require './lib/game'
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
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    $game.attack
    $game.switch
    erb(:attack)

  end
  run! if app_file == $0
end
