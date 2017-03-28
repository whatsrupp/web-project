require 'sinatra'

get "/random-cat" do
  @name = ["Cortez", "Franceso", "Pablo", "Xenith", "Petunia", "Ferndandez", "Euge"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end
