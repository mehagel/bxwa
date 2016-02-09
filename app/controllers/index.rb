
get '/' do
	@agency = Agency.all.sort
	@project=Projects.all

  erb :index
end
