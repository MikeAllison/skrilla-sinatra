require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/cookies'
require 'pry'
require 'byebug'
#require 'pry' if ENV['RACK_ENV'] == 'development'

# Load all required files
Dir["#{Dir.pwd}/config/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/models/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/controllers/*.rb"].each { |file| require file }
Dir["#{Dir.pwd}/helpers/*.rb"].each { |file| require file }

# Time is saved to the database as UTC but it's actually recorded in whatever time zone you set here
TIME_ZONE_ADJUST = -4.hours

enable :sessions

before do
  # Force HTTPS
  #redirect to(request.url.gsub(/http:/i, 'https:')) if request.url.downcase.start_with?('http:')
  # Find logged in user
  @logged_in_user = User.find_by_token(request.cookies['p_token']) unless request.cookies['p_token'].nil?
end

get '/' do
  redirect to('/login')
end

not_found do
  redirect to('/')
end
