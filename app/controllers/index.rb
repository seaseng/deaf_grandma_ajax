# get '/' do
#   if params[:user_input] == params[:user_input].upcase
#     @grandma = "Yea, I heard ya!!!!"
#   else
#     @grandma = "Speak up asshole... :( "
#   end

#   # @grandma = params[:user_input]
#   # Look in app/views/index.erb
#   erb :index
# end

# post '/grandma' do
#   # "#{params[:user_input]}"
#   # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
#   redirect to("/?user_input=#{params[:user_input]}")
#   # redirect to("/")
# end

get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  if params[:user_input] == params[:user_input].upcase
    @grandma = 'Yea, I heard ya!!!!'
  else
    @grandma = 'Speak up asshole... :('
  end

  erb :index

  # redirect to("/?grandma=#{@grandma}")

end
