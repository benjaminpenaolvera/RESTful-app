require_relative 'base_controller'

class SampleController <  BaseController
  class << self
    def message
      'Messa from Sample Controller'
    end
  end
end
