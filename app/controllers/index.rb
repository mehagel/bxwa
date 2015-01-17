# require 'pry'

get '/' do
	@agency = Agency.all.sort
	@project=Projects.all.sort
	
  erb :index
end
