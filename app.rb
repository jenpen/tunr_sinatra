require 'bundler/setup'
require 'pg'
require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'models/artist'
require_relative 'models/song'


get '/' do
  erb :home
end
