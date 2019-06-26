require "http/client"
require "json"

module ConceptNet
  class Client
    property address = "http://api.conceptnet.io"

    property language = "en"

    def initialize(language = "en")
      @language = language.not_nil!
    end

    def get_node(node)
      response = HTTP::Client.get @address + "/c/" + @language + "/" + node
      obj = JSON.parse(response.body)
    end
  end
end
