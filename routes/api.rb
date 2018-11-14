require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'
require 'nokogiri'
require './routes/v1/sample'

class App < Sinatra::Base
  before do
    content_type :json
  end
  
  get '/' do
    status 200
    'This is the root app'
  end

  register Routes::Api::V1::Sample
end
