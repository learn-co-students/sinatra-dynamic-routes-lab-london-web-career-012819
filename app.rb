require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse!
    "#{name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    squared = number * number

    "#{squared}"
  end

  get '/say/:number/:phrase' do
    times = params[:number].to_i
    phrase = params[:phrase]

    total_string = ""
    times.times do
      total_string += "#{phrase}\n"
    end
    total_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    string
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    final_number = 0

    case operation
    when "add"
      final_number = num1 + num2
    when "subtract"
      final_number = num1 - num2
    when "multiply"
      final_number = num1 * num2
    when "divide"
      final_number = num1 / num2
    else
    end

    "#{final_number}"

  end
end
