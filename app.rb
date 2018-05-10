require 'bundler'
require 'sinatra'
#require './assets'
require 'haml'
require 'sass'

Bundler.require(:default)

configure do
	set :erb, :layout => :layout
end

## CONTROLLER ##

get '/' do
	erb :index
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

get '/tool' do
	erb :tools
end

# 404 Error!
# symbols can't start with numbers SO USE QUOTES!
# :layout => bool OR :layout => :custom_layout (any name in views/ folder)
not_found do
  erb :'404', :layout => false
end
