require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name=params[:name]
    @name.reverse
  end
  get '/square/:number' do
    num1=params[:number].to_i
    (num1*num1).to_s
  end
  get '/say/:number/:phrase' do
    nmb=params[:number].to_i
    phr=params[:phrase].to_s
  end
