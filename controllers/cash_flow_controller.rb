get '/cash-flow' do
  authenticated?

  erb :'cash-flow/index'
end
