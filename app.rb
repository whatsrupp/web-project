require 'sinatra'

get '/' do
  erb(:index)
end

get '/random-cat' do
  @name = ["Cortez", "Franceso", "Pablo", "Xenith", "Petunia", "Ferndandez", "Euge"].sample
  erb(:index)
end

get '/name-form' do
  erb("name-form".to_sym)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
