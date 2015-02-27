require_relative 'config/environment'

class GameApp < Sinatra::Base
   get '/' do
    @rps = RPSGame.new(:rock)
    erb :rps_game
end

end
