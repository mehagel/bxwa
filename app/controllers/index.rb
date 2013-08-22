# require 'pry'

get '/' do
	@projects = []
	url = 'http://bxwa.com/bxwa_toc/pub/2956/toc.html'
	data =Nokogiri::HTML(open(url))
	@city = data.css('h3')
	@plans = data.css('td nobr a')
	@projects = data.css('td')
		# @project.each do |project|
		# 	p project
		# end


	
	# project_new = data.css('tr :nth-child(2)')
	# 	project_new.each do |project|
	# 		Projects.create(name: project.name)
	# 	end

	# @project=Projects.all
	# p @project.push (@project_object.text)

	# binding.pry
  # Look in app/views/index.erb
  erb :index
end
