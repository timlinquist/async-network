class NetworksController < ApplicationController
  def index
    start_time = Time.now
    @data = networks.data
    end_time = Time.now

    stars = "*" * 50
    Rails.logger.info(stars +
                      "time: #{end_time - start_time}" +
                     stars)
  end

  def async
    start_time = Time.now
    @data = networks.async_data
    end_time = Time.now

    stars = "*" * 50
    Rails.logger.info(stars +
                      "time: #{end_time - start_time}" +
                     stars)
  end

  private
  def networks
    NetworkList.new
  end
end
