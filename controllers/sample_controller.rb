require_relative 'base_controller'

class SampleController <  BaseController
  class << self
    def message
      @users = User.all
    end
  end
end
