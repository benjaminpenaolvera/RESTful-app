require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require 'nokogiri'

require './routes/v1/sample'
require './models'

set :database, "sqlite3:project-name.sqlite3"

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    'Welcome to RESTful-app'
  end

  get '/contact' do
    ERB.new("<h1>benjamin.pena.olvera@gmail.com</h1>").result(binding)
  end

  get '/params/:name' do
    "Hello #{params["name"]}"
  end
  
  get '/params2/:name' do
    params.inspect
  end

  register Routes::Api::V1::Sample
end
