get '/login' do
  redirect to('/accounts') if @logged_in_user

  erb :index
end

post '/login' do
  user = User.find_by(username: (params[:username]).downcase)

  if user && user.authenticate(params[:password])
    token = User.generate_random_token
    user.save_persistence_token(token)
    response.set_cookie(:p_token, value: token, expires: 1.day.from_now)

    @logged_in_user = User.find_by_token(token)

    redirect to('/accounts')
  else
    session[:message] = { :heading => 'Login Failed', :body => 'The username or password did not match our records.' }

    redirect to ('/login')
  end
end

get '/logout' do
  @logged_in_user.delete_persistence_token unless @logged_in_user.nil?

  response.delete_cookie(:p_token)
  session[:message] = { :heading => 'Goodbye!', :body => 'You have logged out successfully.' }

  redirect to('/login')
end
