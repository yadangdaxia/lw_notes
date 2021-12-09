require 'open-uri'
require 'nokogiri'


def scraper(item)
  # filepath = "results.html"  # just a tester file
  filepath = "https://www.etsy.com/search/?q=#{item}"
  # html_doc = URI.open(filepath)
  html_doc =URI.open(filepath).read
  doc = Nokogiri::HTML(html_doc)

  results = []

  doc.search("h3").first(5).each do |element|
    results << element.text.strip
  end

  return results

end

# p scraper("bunny")




# p doc.search("h3")[0].text.strip
# curl "https://www.etsy.com/search?q=handbags" > results.html
