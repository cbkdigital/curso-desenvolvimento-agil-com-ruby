require 'sinatra'

get '/hi/:nome' do
	@nome = params['nome']
	erb :index
end