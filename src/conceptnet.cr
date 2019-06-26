require "http/client"
require "json"

# https://github.com/commonsense/conceptnet5/wiki/API

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

    # def query(startURI, endURI, rel, node, other, sources)
    #   response = HTTP::Client.get @address + startURI + endURI + "/" + node
    #   obj = JSON.parse(response.body)
    # end

    # def related
    # end

    # def relatedness
    # end

  end
end
