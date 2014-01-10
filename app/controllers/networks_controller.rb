class NetworksController < ApplicationController
  def index
    collection = if params[:async]
                  :async_data
                else
                  :data
                end

    start_time = Time.now
    @data = networks.send(collection)
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
