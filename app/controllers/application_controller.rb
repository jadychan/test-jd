require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/greeting' do 
    return erb :greeting
  end 
  
  get '/food' do
    return erb :food
  end
  
  post '/' do 

    @answer = quiz(params[:location], params[:diet])

    return erb :results 
  end 
end
