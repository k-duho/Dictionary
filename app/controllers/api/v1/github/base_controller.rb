module Api
  module V1
    module Github
      class BaseController < Api::V1::ApiController
        before_action :set_client

        private

        attr_reader :client

        def set_client
          user = ::Github::User.find(params[:id])
          @client = ::Github::Client.new(user.auth_token)
        end
      end
    end
  end
end

