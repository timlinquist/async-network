class NetworkList
  def initialize
    twitters = Array.new(8){ TwitterNetwork.new }
    @networks = twitters
  end

  def data
    @networks.map{|network| [network.name, network.data] }
  end

  def async_data
    threads = @networks.map {|network|
      Thread.new {
        [network.name, network.data]
      }
    }.map(&:join).map(&:value)
  end
end
