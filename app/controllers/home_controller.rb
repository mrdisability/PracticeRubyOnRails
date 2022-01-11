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
    require 'net/http'
    require 'json'

    @symbol = params[:sym]
    @symbol = @symbol.upcase

    @prices_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=' + @symbol + '&tsyms=USD,EUR'
    @prices_url = URI(@prices_url)
    @prices_response = Net::HTTP.get(@prices_url)
    @prices = JSON.parse(@prices_response)
  end
end
