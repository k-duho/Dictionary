module Api
  module V1
    module Github
      class UsersController < BaseController
        def show
          res = client.get("/users")

          render json: { success: true, data: res }
        end
      end
    end
  end
end

