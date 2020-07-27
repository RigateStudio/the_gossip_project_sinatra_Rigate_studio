#appeler le Bundler
require 'bundler'
#lire le Gemfile
Bundler.require

#lire les fichiers du dossiers lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'controller'

run ApplicationController