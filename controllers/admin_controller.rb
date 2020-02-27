get '/admin/settings' do
  authenticated?

  @accounts = Account.all
  @users = User.all
  @db_stats = Database.get_stats

  erb :'/admin/settings/index'
end
