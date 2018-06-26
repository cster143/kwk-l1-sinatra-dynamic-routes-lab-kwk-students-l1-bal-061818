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

  end
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @number1 + @number2
    elsif @operation == "subract"
      @number1 - @number2
    elsif @operation == "multiply"
      @number1 * @number2
    else
      @number1 / @number2
    end
  end
end
