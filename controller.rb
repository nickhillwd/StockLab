require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require 'yahoofinance'

get '/' do
  #binding.pry
  @stock_symbol = params[:stock_symbol]

  erb :result
end













#YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade