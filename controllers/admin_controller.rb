get '/admin/settings/?' do
  halt 403 unless @logged_in_user

  @accounts = Account.all
  @users = User.all
  @db_stats = Database.get_stats

  erb :'/admin/settings/index'
end