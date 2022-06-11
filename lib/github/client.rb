module Github
  class Client
    # Github API Doc

    # TODO: move to ".env"
    GITHUB_API_BASE_URL = "https://api.github.com"
    TIME_OUT_SEC = 5

    def initialize(auth_token)
      @auth_token = auth_token
      @client = HTTPClient.new
      configure_client
    end

    # NOTE: path = "/{path}"
    def get(path, query_params = {}, header: default_header)
      url = GITHUB_API_BASE_URL + path
      res = client.get(url, query: query_params, header: header)

      JSON.parse(res.body, symbolize_names: true)
    end

    private

    attr_reader :client

    def default_header
      {
        "Authorization" => "token #{@auth_token}"
      }
    end

    def configure_client
      client.receive_timeout = TIME_OUT_SEC
    end
  end
end
