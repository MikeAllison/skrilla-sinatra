get '/admin/settings' do
  authenticated?

  @accounts = Account.order(name: :asc)
  @users = User.order(name: :asc)
  @db_stats = Database.get_stats

  erb :'/admin/settings/index'
end
