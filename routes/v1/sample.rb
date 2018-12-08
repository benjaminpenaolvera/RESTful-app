require './controllers/sample_controller'

module Routes
  module Api
    module V1
      module Sample
        def self.registered(app)
          app.get '/v1/users' do
            { status: SampleController.users }.to_json
          end
        end
      end
    end
  end
end
