get '/bills/?' do
  redirect to('/login') unless @logged_in_user

  @bills = Bill.all

  erb :'bills/index'
end

get '/bills/:id/edit' do
  redirect to('/login') unless @logged_in_user

  @bill = Bill.find_by(params[:id])
  @bill_frequencies = BillFrequency.all
  @accounts = Account.all

  erb :'bills/edit'
end