class MyScraper

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def scrape_agencies 
    1..4500.times do |iterator|
      try_to_build_agency("http://www.bxwa.com/bxwa_toc/pub/#{iterator}/toc.html")
    end
  end

  def try_to_build_agency(potential_site_url)
    noko_agency = get(potential_site_url)
    if noko_agency
      classification  = noko_agency.css('h3').text.split('-').last.strip
        if classification.includes? "Projects Bidding"
          puts classification 
          # Agency.create(name: noko_agency.css('h3').text, url: potential_site_url)  
        end
    end
  end
end

class MyProjectScraper

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def get_projects
    agency = Agency.all.sort
    agency.each do |project|
      noko_project = get(project.url)
       if noko_project
        links=noko_project.css('a')
        hrefs = links.map {|link| link.attribute('href').to_s}
          hrefs.each do |link|
              urls            = project.url[0..-9]+link
              city            = noko_project.css('h3').text.split('-').first
              puts classification  = noko_project.css('h3').text.split('-').last
              Projects.create(city: city, classification: classification, url: urls, owner: project.name.split('-').first)

            end
      end
    end
  end
end


class GetMyJobs

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def get_jobs
    jobs = Projects.all.sort
    jobs.each do |job|
      if job.classification == ' Projects Bidding'
      noko_job = get(job.url)
        if noko_job
          project_name  =noko_job.css('title').text.split(',').first
          state         =noko_job.css('title').text.split(',').last.split('').first(3).join.last(2)

          job.update_attributes(project_name: project_name, state: state)
        end
      end
    end
  end
end