# require 'pry'

get '/' do

	@projects =  []
	url = 'http://bxwa.com/bxwa_toc/pub/1945/toc.html'
	data =Nokogiri::HTML(open(url))
	# @city = data.css('h3').text
	# city = @city[0..-18]
	@agency = Agency.create(name: city, url: url)



	# @plans = data.css('td nobr a')
	# @projects = data.css('td')
		# @project.each do |project|
		# 	p project
		# end

		@agency = []
	# @agency = Agency.all.sort
    	# @agency.each do |project|
    	# 	noko_project = Nokogiri::HTML(open(project.url))
    	
     #  		if noko_project
     #    Projects.create(name: noko_project.css('tr td'), bid_date: noko_project.css('a'))
     #  end
   
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
