get '/cash-flow' do
  redirect to('/login') unless @logged_in_user

  erb :'cash-flow/index'
end
