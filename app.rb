require 'sinatra/base'
require './lib/game'
#require 'shotgun'
#set :session_secret, "whatever"

class Battle < Sinatra::Base
  #enable :sessions
  ['/play', "/attack", "/gameover"].each do |path|
    before path do
      @player1 = Game.instance_of_game.player1.name
      @player2 = Game.instance_of_game.player2.name
    end
end

  get '/test'do
    "Testing infrastructure working"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.set_a_game(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    Game.instance_of_game.attack
    Game.instance_of_game.switch
    Game.instance_of_game.player1.hp == 0 || Game.instance_of_game.player2.hp == 0 ? redirect('/gameover') : erb(:attack)
  end
  get '/gameover' do
    erb(:gameover)
  end
  run! if app_file == $0
end
