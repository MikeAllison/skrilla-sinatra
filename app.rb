require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/cookies'
require './classes'
require './view_helpers'
require 'pry'
#require 'pry' if ENV['RACK_ENV'] == 'development'

# Load all required files
Dir["#{Dir.pwd}/models/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/helpers/*.rb"].each { |file| require file }

# Time is saved to the database as UTC but it's actually recorded in whatever time zone you set here
TIME_ZONE_ADJUST = -4.hours

enable :sessions

before do
  # Force HTTPS
  redirect to(request.url.gsub(/http:/i, 'https:')) if request.url.downcase.start_with?('http:')
  # Find logged in user
  @logged_in_user = User.find_by_token(request.cookies['p_token']) unless request.cookies['p_token'].nil?
end

get '/' do
  redirect to('/login')
end

get '/login/?' do
  redirect to('/accounts') if @logged_in_user
  erb :index
end

post '/login' do
  user = User.find_by(username: (params[:username]).downcase)

  if user && user.authenticate(params[:password])
    token = User.generate_random_token
    user.save_persistence_token(token)
    response.set_cookie(:p_token, value: token, expires: 1.month.from_now)
    @logged_in_user = User.find_by_token(token)
    redirect to('/accounts')
  else
    session[:message] = { :heading => 'Login Failed', :body => 'The username or password did not match our records.' }
    redirect to ('/login')
  end
end

get '/logout/?' do
  @logged_in_user.delete_persistence_token unless @logged_in_user.nil?
  response.delete_cookie(:p_token)
  session[:message] = { :heading => 'Goodbye!', :body => 'You have logged out successfully.' }
  redirect to('/login')
end

get '/accounts/?' do
  redirect to('/login') unless @logged_in_user

  @accounts = Account.all

  erb :'accounts/index'
end

get '/accounts/:url_safe_name/transactions' do
  @account = Account.find_by(url_safe_name: params[:url_safe_name])
  @transactions = Transaction.where(account_id: @account.id).order(date: :asc)

  erb :'accounts/transactions/index'
end

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

get '/admin/settings/?' do
  halt 403 unless @logged_in_user

  @accounts = Account.all
  @users = User.all
  @db_stats = Database.get_stats
  erb :'/admin/settings/index'
end

not_found do
  redirect to('/')
end
