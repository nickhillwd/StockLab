require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require 'yahoofinance'

get '/' do
  @stock_symbol = params[:stock_symbol]

  if @stock_symbol
    @result = YahooFinance::get_standard_quotes(@stock_symbol)[@stock_symbol].lastTrade
  end
  # binding.pry
  erb :result
end













#YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade