require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    output = (@number *= @number).to_s
  end

  get '/say/:number/:phrase' do
      @number = params[:number].to_i
      @phrase = params[:phrase]
      output = @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_arr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    string = word_arr.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    sum = nil
    if @operation == "add"
      sum = @number1 + @number2
    elsif @operation == "subtract"
      sum = @number1 - @number2
    elsif @operation == "multiply"
      sum = @number1 * @number2
    elsif @operation == "divide"
      sum = @number1 / @number2
    end
    sum.to_s
  end
end
