get '/merchants' do
  authenticated?

  @merchants = Merchant.order(name: :asc)

  if @merchants.empty?
    session[:message] = { :heading => 'Welcome', :body => 'No merchants could be found.  You will be redirected to the new merchant page.' }
    redirect to('/merchants/new')
  end

  erb :'merchants/index'
end

post '/merchants' do
  authenticated?

  merchant = Merchant.new(name: params[:name])

  if merchant.save
    session[:message] = { :heading => 'Success', :body => 'The merchant was added.' }
    redirect to("/merchants")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the merchant.  Please try again.' }
    redirect to('/merchants/new')
  end
end

get '/merchants/:url_safe_name/edit' do
  authenticated?

  @merchant = Merchant.find_by(url_safe_name: params[:url_safe_name])

  erb :'merchants/edit'
end

post '/merchants/:url_safe_name/edit' do
  authenticated?
  
  merchant = Merchant.find_by(url_safe_name: params[:url_safe_name])

  if merchant.update(name: params[:name])
    session[:message] = { :heading => 'Success', :body => 'The merchant was updated.' }
    redirect to('/merchants')
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem updating the merchant.  Please try again.' }
    redirect to("/merchants/#{params[:url_safe_name]}/edit")
  end
end
