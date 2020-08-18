require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    params = {
      :name => "Carl",
      :favorite_food => "fried chicken"
    }

    params.to_s

    "My name is #{params[:name]}, and I love #{params[:favorite_food]}."
  end

end