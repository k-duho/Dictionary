module Github
  class Client
    # Github API Doc

    # TODO: move to ".env"
    GITHUB_API_BASE_URL = "https://api.github.com"
    TIME_OUT_SEC = 5

    attr_reader :client

    def initialize
      @client = HTTPClient.new
      configure_client
    end

    def configure_client
      client.receive_timeout = TIME_OUT_SEC
    end

    def default_header
      # NOTE: token 6/8 ~ 7days
      # TODO: move to ".env"
      {
        "Authorization" => "token #{ENV["GITHUB_API_TOKEN"]}"
      }
    end

    # path: "/{path}"
    def get(path, query_params = {}, header: default_header)
      url = GITHUB_API_BASE_URL + path
      res = client.get(url, query: query_params, header: header)

      JSON.parse(res.body)
    end
  end
end
