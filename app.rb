require 'sinatra'
require 'sinatra/reloader' if development?
require './caesar_cipher'

set :port, '80'

get '/' do
	caesar = caesar_cipher(params['text'].to_s, params['shift'].to_i)
  
  erb :index, :locals => { :caesar => caesar }
end