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
    @nmb=params[:number].to_i
    @phr=params[:phrase].to_s
    "#{nmb}#{phr}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1=params[:word1]
    @w2=params[:word2]
    @w3=params[:word3]
    @w4=params[:word4]
    @w5=params[:word5]
    "#{w1}#{w2}#{w3}#{w4}#{w5}"
  end
  get '/:operation/:number1/:number2' do
    nm1=params[:number1]
    nm2=params[:number2]
    (nm1+nm2).to_i
    (nm1-nm2).to_i
    (nm1*nm2).to_i
    (nm1/nm2).to_i
  end
end
