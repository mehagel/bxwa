class MyScraper

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def scrape_agencies 
    1..3000.times do |iterator|
      try_to_build_agency("http://www.bxwa.com/bxwa_toc/pub/#{iterator}/toc.html")
    end

  end

  def try_to_build_agency(potential_site_url)
    noko_agency = get(potential_site_url)
    if noko_agency
      Agency.create(name: noko_agency.css('h3').text, url: potential_site_url)  
    end
  end

end

class MyProjectScraper

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def get_projects
    projects = Agency.all.sort
    projects.each do |project|
    noko_project = get(project.url)
      if noko_project
        Project.create(name: noko_project.css('td') agency_id: agency.id)
      end
    end
  end

end
# url = 'http://bxwa.com/bxwa_toc/pub/307/toc.html'
#   data =Nokogiri::HTML(open(url))
#   @city = data.css('h3')
#   @plans = data.css('td nobr a')
#   @projects = data.css('td')
