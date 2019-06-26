require "http/client"
require "json"

module ConceptNet
  class Client
    getter address : String?

    property language : String?


    def initialize(address = "https://api.conceptnet.io", language = "en")
    @address = address
    @language = language
    end

    def get_node(node)
      response = HTTP::Client.get @address + "/c/" + @language + "/" + node
      obj = JSON.parse(response.body)
    end
  
  end


end
