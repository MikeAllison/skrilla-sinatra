get '/bill-occurences/:id/mark-as-paid' do
  redirect to('/login') unless @logged_in_user

  @bill_occurence = BillOccurrence.find_by(id: params[:id])
  @accounts = Account.all

  erb :'bill-occurences/mark-as-paid'
end