class NetworkList
  def initialize
    @networks = [TwitterNetwork.new, FacebookNetwork.new]
  end

  def data
    @networks.map{|network| [network.name, network.data] }
  end

  def async_data
  end
end
