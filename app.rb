require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @product = @number * @number
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    (params[:number].to_i).times do
      @string += "#{params[:phrase]}\n"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    @result = ""

    case @operation
    when "add"
      @result = @num1 + @num2
    when "subtract"
      @result = @num1 - @num2
    when "multiply"
      @result = @num1 * @num2
    when "divide"
      @result = @num1 / @num2
    end

    "#{@result}"
  end

end
