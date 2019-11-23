get '/accounts' do
  redirect to('/login') unless @logged_in_user

  @accounts = Account.all

  if @accounts.empty?
    session[:message] = { :heading => 'Welcome', :body => 'No accounts could be found.  Please add an account.' }
  end

  erb :'accounts/index'
end

post '/accounts' do
  account = Account.new(name: params[:name], starting_balance: params[:starting_balance])

  if account.save
    Transaction.create(merchant: Merchant.find_or_create_by(name: 'Starting Balance'), date: Date.today, amount: account.starting_balance, account_id: account.id, credit: true)
    session[:message] = { :heading => 'Success', :body => 'The account was added.' }
    redirect to("/accounts")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the account.  Please try again.' }
    redirect to('/accounts')
  end
end

get '/accounts/:url_safe_name/transactions' do
  redirect to('/login') unless @logged_in_user

  @merchants = Merchant.all
  @account = Account.find_by(url_safe_name: params[:url_safe_name])
  @transactions = Transaction.where(account_id: @account.id).order(date: :desc)

  erb :'accounts/transactions/index'
end

post '/accounts/:url_safe_name/transactions' do
  redirect to('/login') unless @logged_in_user

  account = Account.find_by(url_safe_name: params[:url_safe_name])
  credit = params[:credit] == "on" ? true : false
  transaction = Transaction.new(merchant_id: params[:merchant_id], date: params[:date], amount: params[:amount], account_id: account.id, credit: credit)

  if transaction.save
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the transaction.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  end

  erb :'accounts/transactions/index'
end

get '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  @transaction = Transaction.find_by(id: params[:id])

  if @transaction.nil?
    session[:message] = { :heading => 'Error', :body => 'The transaction could not be found.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  end

  @merchants = Merchant.all
  @accounts = Account.all

  erb :'accounts/transactions/edit'
end

post '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  strip_whitespace(params)

  transaction = Transaction.find_by(id: params[:id])

  transaction.merchant_id = params[:merchant_id].empty? ? transaction.merchant_id : params[:merchant_id]
  transaction.amount = params[:amount].empty? ? transaction.amount : params[:amount]
  transaction.credit = params[:credit] == "on" ? true : false
  transaction.account_id = params[:account_id].empty? ? transaction.account_id : params[:account_id]
  transaction.date = params[:date]

  if transaction.save
    session[:message] = { :heading => 'Success', :body => 'Your changes were saved.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  else
    session[:message] = { :heading => 'Update Failed', :body => 'There was a problem saving your changes.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions/#{params[:id]}/edit")
  end
end

get '/accounts/:url_safe_name/transactions/:id/delete' do
  redirect to('/login') unless @logged_in_user

  transaction = Transaction.find_by(id: params[:id])

  if transaction.nil?
    session[:message] = { :heading => 'Update Failed', :body => 'The transaction could not be found.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  end

  if transaction.destroy
    session[:message] = { :heading => 'Success', :body => 'The transaction was deleted.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  else
    session[:message] = { :heading => 'Update Failed', :body => 'There was a problem saving your changes.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  end
end
