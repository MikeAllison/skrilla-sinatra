get '/accounts' do
  redirect to('/login') unless @logged_in_user

  @accounts = Account.all

  if @accounts.empty?
    session[:message] = { :heading => 'Welcome', :body => 'No accounts could be found.  You will be redirected to the new account page.' }
    redirect to("/accounts/new")
  end

  erb :'accounts/index'
end

get '/accounts/new' do
  erb :'accounts/new'
end

post '/accounts/new' do
  account = Account.new(name: params[:name], starting_balance: params[:starting_balance])

  if account.save
    Transaction.create(merchant: 'Starting Balance', date: Date.today, amount: account.starting_balance, account_id: account.id, credit: true)
    session[:message] = { :heading => 'Success', :body => 'The account was added.' }
    redirect to("/accounts")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the account.  Please try again.' }
    redirect to("/accounts/new")
  end
end

get '/accounts/:url_safe_name/transactions' do
  redirect to('/login') unless @logged_in_user

  @account = Account.find_by(url_safe_name: params[:url_safe_name])
  @transactions = Transaction.where(account_id: @account.id).order(date: :desc)

  erb :'accounts/transactions/index'
end

get '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  @transaction = Transaction.find_by(id: params[:id])

  if @transaction.nil?
    session[:message] = { :heading => 'Error', :body => 'The transaction could not be found.  Please try again.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
  end

  @accounts = Account.all

  erb :'accounts/transactions/edit'
end

post '/accounts/:url_safe_name/transactions/:id/edit' do
  redirect to('/login') unless @logged_in_user

  strip_whitespace(params)

  transaction = Transaction.find_by(id: params[:id])

  transaction.merchant = params[:merchant].empty? ? transaction.merchant : params[:merchant]
  transaction.amount = params[:amount].empty? ? transaction.amount : params[:amount]
  transaction.credit = params[:credit] == "on" ? true : false
  transaction.account_id = params[:account_id]
  transaction.date = params[:date]

  if transaction.save
    session[:message] = { :heading => 'Success', :body => 'Your changes were saved.' }
    redirect to("/accounts/#{params[:url_safe_name]}/transactions")
    binding.pry
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
