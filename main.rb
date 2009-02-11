require 'rubygems'
require 'sinatra'

get '/' do
	haml :index
end

get '/new' do
	haml :new
end

post '/create' do
	if params[:Filedata]
		file = params[:Filedata]
		filename = params["Filename"]	
		print file[:tempfile].inspect

		File.open("public/upload/#{filename}", 'w') {|f| f.write file[:tempfile] }
	end 
end