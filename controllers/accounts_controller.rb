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

  #TODO - MOVE ELSEWHERE
  params.each do |param|
    param[1].strip!
  end

  transaction = Transaction.find_by(id: params[:id])

  transaction.merchant = params[:merchant].empty? ? transaction.merchant : params[:merchant]
  transaction.amount = params[:amount].empty? ? transaction.amount : params[:amount]
  transaction.credit = params[:credit]
  transaction.account_id = params[:account]
  transaction.date = params[:date]

  # TEST
  transaction.update!

  redirect to("/accounts/#{params[:url_safe_name]}/transactions")
end