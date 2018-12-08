require_relative 'base_controller'

class SampleController <  BaseController
  class << self
    def users
      @users = User.all
    end
  end
end
