require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './config/environments' #database config
require './models/favorite'


get '/' do
  erb :index
end


#retrieves all favorites
get '/favorites' do
  content_type :json
  favorites = Favorite.all #retrieves favorites from database and saves
  favorites.to_json #returns all favorites as json
end

#saves a favorite to the database
post '/favorite' do
  content_type :json
  @thing = Favorite.new(name: params[:name], oid: params[:oid]) #saves new favorites
  if @thing.save
    @thing.to_json #returns new favorite as json
  else
    return 'Something Went Wrong' # if favorite did not get saved
  end
end
