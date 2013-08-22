class MyScraper

  def get(url)
    Nokogiri::HTML(open(url)) rescue nil
  end

  def scrape_agencies 
    1..5000.times do |iterator|
      try_to_build_agency("http://www.bxwa.com/bxwa_toc/pub/#{iterator}/toc.html")
    end
  end

  def try_to_build_agency(potential_site_url)
    noko_agency = get(potential_site_url)
    if noko_agency
      Agency.create(name: noko_agency.css('a').text, url: potential_site_url  )
    end
  end

end