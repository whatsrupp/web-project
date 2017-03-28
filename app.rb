require 'sinatra'

get "/cat" do
  @name = ["Cortez", "Franceso", "Pablo", "Xenith", "Petunia", "Ferndandez", "Euge"].sample
  erb(:index)
end
