require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name_reverse = @name.reverse
    "#{@name_reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    @final_square = @square.to_s
    "#{@final_square}"
  end
  
  get '/say/:number/:phrase' do
  final_string = ""
  @num = params[:number].to_i
  @phrase = params[:phrase]
    # (params[:number].to_i).times do
    #   final_string += "#{params[:phrase]}\n"
    # end
    # return final_string
    i = 0
    while i < @num
    final_string += "#{@phrase}\n"
    i += 1
    end
    return final_string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    return "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end
end
