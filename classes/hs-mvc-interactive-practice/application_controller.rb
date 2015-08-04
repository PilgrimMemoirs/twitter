require 'bundler'
Bundler.require
require_relative 'models/cat.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


end