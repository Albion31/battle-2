require 'sinatra/base'
require './lib/player'
require './lib/game'

class BattleApp < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end


  post '/names' do

    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    @message = session[:message]
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    @player_1_hp = $player_1.hp
    @player_2_hp= $player_2.hp

    erb :play
  end

  post '/attack' do
    @game = Game.new($player_1, $player_2)

    params[:attack] == $player_1.name ?  @game.attack($player_1) : @game.attack($player_2)
    session[:message] = "#{params[:attack]} has been attacked"
    redirect 'play'
  end



  run! if app_file == $0
end
