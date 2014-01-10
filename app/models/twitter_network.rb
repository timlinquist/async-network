require 'uri'
require 'net/http'

class TwitterNetwork
  def name
    "Twitter"
  end

  def data
    sleep 10
    @data ||= Net::HTTP.get_response( URI('http://twitter.com') )
  end
end
