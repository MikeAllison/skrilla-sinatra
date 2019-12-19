get '/bills' do
  redirect to('/login') unless @logged_in_user

  @bills = Bill.all

  erb :'bills/index'
end

get '/bills/new' do
  redirect to('/login') unless @logged_in_user

  @accounts = Account.all

  erb :'bills/new'
end

post 'bills/new' do
  redirect to('/login') unless @logged_in_user
end

get '/bills/:id/edit' do
  redirect to('/login') unless @logged_in_user

  @bill = Bill.find_by(params[:id])
  @accounts = Account.all
  @merchants = Merchant.all

  erb :'bills/edit'
end

get '/bills/:id/mark-as-paid' do
  redirect to('/login') unless @logged_in_user

  @bill = Bill.find_by(params[:id])
  @accounts = Account.all
  @merchants = Merchant.all

  erb :'bills/mark-as-paid'
end
