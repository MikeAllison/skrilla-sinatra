get '/bills' do
  authenticated?

  @bills = Bill.all

  erb :'bills/index'
end

get '/bills/new' do
  authenticated?

  @accounts = Account.all
  @merchants = Merchant.all

  erb :'bills/new'
end

post '/bills/new' do
  authenticated?
  binding.pry
  bill = Bill.new(description: "Beer", merchant_id: 2, frequency: 'bi_weekly', starting_date: '2019-02-26', amount: 1000.00, credit: false, account_id: 1)

  if bill.save
    session[:message] = { :heading => 'Success', :body => 'The bill was added.' }
    redirect to("/bills")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the bill.  Please try again.' }
    redirect to('/bills')
  end
end

get '/bills/upcoming' do
  authenticated?

  @bill_occurrences = BillOccurrence.all

  erb :'bills/upcoming'
end

get '/bills/:id/edit' do
  authenticated?

  @bill = Bill.find_by(id: params[:id])
  @accounts = Account.all
  @merchants = Merchant.all

  erb :'bills/edit'
end