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
  my_phrase = params[:user_input]
  if (my_phrase == my_phrase.upcase) && my_phrase != ""
    @grandma = 'Yea, I heard ya!!!!'
  elsif (my_phrase != my_phrase.upcase) && my_phrase != ""
    @grandma = 'Speak up asshole... :('
  else
    @grandma = nil;
  end

  if request.xhr?
    # Cool, I'll send ya some JSON!
    content_type :json
    @grandma.to_json

    # erb :index
  else
    # Nope? Well, that's fine. Have some HTML!
    erb :index
  end

  # redirect to("/?grandma=#{@grandma}")

end
