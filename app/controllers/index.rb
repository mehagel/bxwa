
get '/' do
	@agency = Agency.all.sort
	@projects=Projects.all.sort

  erb :index
end
