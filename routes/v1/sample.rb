require './controllers/sample_controller'

module Routes
  module Api
    module V1
      module Sample
        def self.registered(app)
          app.get '/sample' do
            { status: SampleController.message }.to_json
          end
        end
      end
    end
  end
end
