require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/battle' do
    "Hello Battle"
  end

  post '/attack' do
    @game = $game
    @game.attack($game.players[1])
    redirect 'play'
  end
end
