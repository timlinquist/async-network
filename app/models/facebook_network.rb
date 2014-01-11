require 'uri'
require 'net/http'

class FacebookNetwork
  def name
    "Facebook"
  end

  def data
    return @data if defined? @data
    data = nil

    10.times do
      data = Net::HTTP.get_response( URI('http://twitter.com') )
    end

    @data = data
  end
end
