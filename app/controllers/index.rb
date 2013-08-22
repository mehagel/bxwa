# require 'pry'

get '/' do
	@project = []
	url = 'http://bxwa.com/bxwa_toc/pub/3587/toc.html'
	data = Nokogiri::HTML(open(url))
	@plans = data.css('a')

	@project = data.css('tr :nth-child(2)')
	p @project
	# p @project.push (@project_object.text)

	# binding.pry
  # Look in app/views/index.erb
  erb :index
end
