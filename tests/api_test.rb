require File.expand_path './test_helper.rb', __FILE__
require 'minitest/autorun'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    App
  end

  def test_hello_world
    get '/'
    assert last_response.ok?
  end
end