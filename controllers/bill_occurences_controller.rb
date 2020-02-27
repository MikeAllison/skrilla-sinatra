get '/bill-occurences/:id/mark-as-paid' do
  authenticated?

  @bill_occurence = BillOccurrence.find_by(id: params[:id])
  @accounts = Account.all

  erb :'bill-occurences/mark-as-paid'
end