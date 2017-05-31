require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'

get '/' do
  @pokemonsvariable=Pokemon.all
  erb :"index"
end

get '/new' do
  erb :"new_pokemon"
end
post '/new' do
  @pokemon=Pokemon.create(params[:pokemon])
  redirect "/#{@pokemon.id}"
end

get '/:id' do
  @specficpokemon = Pokemon.find(params[:id])
  erb :"show"
end

get '/:id/edit' do
  @specficpokemon = Pokemon.find(params[:id])
  erb :"edit_pokemon"
end

put '/:id/edit' do
  @specficpokemon = Pokemon.find(params[:id])
  @specficpokemon.update(params[:specficpokemon])
  redirect "/#{@specficpokemon.id}"
end

get '/:id/delete' do
  @specficpokemon = Pokemon.find(params[:id])
  erb :"delete_pokemon"
end

delete '/:id/delete' do
  @specficpokemon = Pokemon.find(params[:id])
  @specficpokemon.destroy
  redirect "/"
end
