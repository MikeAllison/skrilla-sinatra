get '/categories' do
  authenticated?

  @categories = Category.order(name: :asc)

  if @categories.empty?
    session[:message] = { :heading => 'Welcome', :body => 'No categories could be found.  You will be redirected to the new category page.' }
    redirect to('/categories/new')
  end

  erb :'categories/index'
end

post '/categories' do
  authenticated?

  category = Category.new(name: params[:name])

  if category.save
    session[:message] = { :heading => 'Success', :body => 'The category was added.' }
    redirect to("/categories")
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem adding the category.  Please try again.' }
    redirect to('/categories')
  end
end

get '/categories/:url_safe_name/edit' do
  authenticated?

  @category = Category.find_by(url_safe_name: params[:url_safe_name])

  erb :'categories/edit'
end

post '/categories/:url_safe_name/edit' do
  authenticated?

  category = Category.find_by(url_safe_name: params[:url_safe_name])

  if category.update(name: params[:name])
    session[:message] = { :heading => 'Success', :body => 'The category was updated.' }
    redirect to('/categories')
  else
    session[:message] = { :heading => 'Error', :body => 'There was a problem updating the category.  Please try again.' }
    redirect to("/category/#{params[:url_safe_name]}/edit")
  end
end
