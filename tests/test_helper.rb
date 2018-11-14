ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'

require File.exkpand_path '../app.ru', __FILE__
