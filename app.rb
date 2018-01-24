require_relative 'config/environment'

class App < Sinatra::Base

  1. Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.

  2. Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. **Note:** Remember that values in params always come in as strings, and your return value for the route should also be a string (use `.to_i` and `.to_s`).

  3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.

  4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words and returns a string with them formatted as a sentence.

  5. Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to `/add/1/2` should render `3`.

  get '/square/:number' do
    "The square is #{params[:number].to_i + params[:number].to_i}"
  end

  # This is a sample dynamic route.
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/say/:number/:phrase" do
    params[:number].to_i * "#{params[:phrase]}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1].capitalize} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      "The sum is #{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "The difference is #{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "The product is #{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "The quotient is #{params[:number1].to_i / params[:number2].to_i}"
    else
      "Did not recognize operation params[:operation]. Expected add, subtract, multiply, or '"
  end

end
