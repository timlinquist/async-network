require 'uri'
require 'net/http'

class TwitterNetwork
  def name
    "Twitter"
  end

  def data
    @data ||= Net::HTTP.get_response( URI('http://twitter.com') )
  end
end 
