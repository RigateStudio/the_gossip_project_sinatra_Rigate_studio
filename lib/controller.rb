require 'sinatra'
require_relative 'Gossip'

class ApplicationController < Sinatra::Base
  
  get '/' do #Ce qui rentre du navigateur Get: le serveur envoie à google, Post: le 
    erb :index #Prends tous les fichier erb dans view
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do 
   Gossip.new.save #(les_entrées_du_gossip)
  end

  run! if app_file == $0
end

  #important on ne peut pas mettre des puts et des erb en même temps
