module Api
  module V1
    module Github
      class BaseController < Api::V1::ApiController
        before_action :set_user
        before_action :set_client

        private

        attr_reader :client, :user

        def set_user
          @user = ::Github::User.find(params[:id])
        end

        def set_client
          @client = ::Github::Client.new(user.auth_token)
        end
      end
    end
  end
end

