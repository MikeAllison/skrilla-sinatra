get '/accounts/?' do
  redirect to('/login') unless @logged_in_user

  @accounts = Account.all

  erb :'accounts/index'
end

get '/accounts/:url_safe_name/transactions' do
  redirect to('/login') unless @logged_in_user

  @account = Account.find_by(url_safe_name: params[:url_safe_name])
  @transactions = Transaction.where(account_id: @account.id).order(date: :asc)

  erb :'accounts/transactions/index'
end

get '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  @transaction = Transaction.find_by(id: params[:id])
  @accounts = Account.all

  erb :'accounts/transactions/edit'
end

post '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  params.each do |param|
    param[1].strip!
  end

  @transaction = Transaction.find_by(id: params[:id])

  unless params[:merchant].empty?
    merchant = Merchant.find_by(name: params[:merchant])
    merchant = params[:merchant] if merchant.nil?
  end

  amount = params[:amount] unless params[:amount].empty?
  credit = params[:credit]
  account = Account.find_by(id: params[:account]) unless params[:account].empty?
  date = params[:date] unless params[:date].empty?

  byebug

  redirect to("/accounts/#{params[:url_safe_name]}/transactions")
end