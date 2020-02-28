get '/bill-occurrences/:id/edit' do
  @bill_occurrence = BillOccurrence.find_by(id: params[:id])
  @accounts = Account.order(name: :asc)
  @merchants = Merchant.order(name: :asc)

  erb :'bill-occurrences/edit'
end

get '/bill-occurrences/:id/mark-as-paid' do
  authenticated?

  @bill_occurrence = BillOccurrence.find_by(id: params[:id])
  @accounts = Account.order(name: :asc)

  erb :'bill-occurrences/mark-as-paid'
end