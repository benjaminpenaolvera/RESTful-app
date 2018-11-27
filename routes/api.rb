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
    'This is the root app'
  end

  get '/contact' do
    'benjamin.pena.olvera@gmail.com'
  end

  register Routes::Api::V1::Sample
end
