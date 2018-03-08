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

