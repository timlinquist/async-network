require 'uri'
require 'net/http'

class FacebookNetwork
  def name
    "Facebook"
  end

  def data
    @data ||= Net::HTTP.get_response( URI('http://twitter.com') )
  end
end
