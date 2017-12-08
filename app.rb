require 'sinatra/base'
require './lib/player'
require './lib/game'

class BattleApp < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @message = session[:message]
    erb :play
  end

  post '/attack' do
    @game = $game
    loop do
      params[:attack] == @game.player_1.name ?  @game.attack($game.player_1) : @game.attack($game.player_2)
      session[:message] = "#{params[:attack]} has been attacked"
      break if @game.player_1.hp == 0 || @game.player_2.hp == 0
      redirect 'play'
    end
    @game.player_1.hp == 0 ? session[:message] = "#{@game.player_1.name} has lost" : session[:message] = "#{@game.player_2.name} has lost"
  end

  run! if app_file == $0
end
