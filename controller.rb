require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require 'yahoofinance'

get '/' do
  @stock_symbol = params[:stock_symbol]
  @stock_name = params[:stock_symbol]

  if @stock_symbol
    quotes = YahooFinance::get_standard_quotes(@stock_symbol)[@stock_symbol]
    @last_trade = quotes.lastTrade
    @stock_name = quotes.name
  end
  # binding.pry
  erb :result
end













#YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade
#YahooFinance::get_standard_quotes('AAPL')['AAPL'].name