class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @news = JSON.parse(@response)
  end

  def prices
  end
end
