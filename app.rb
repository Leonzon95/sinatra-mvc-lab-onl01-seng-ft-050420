require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do   
        erb :user_input
    end

    post '/pig_latinazer' do 
        
    end
end