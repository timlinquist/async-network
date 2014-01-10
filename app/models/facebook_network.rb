require 'uri'
require 'net/http'

class FacebookNetwork
  def name
    "Facebook"
  end

  def data
    sleep 10
    @data ||= Net::HTTP.get_response( URI('http://www.facebook.com') )
  end
end
