require 'open-uri'
require 'nokogiri'
require_relative 'recipe'

class Scraper

  def initialize(ingredient)
    @ingredient = ingredient
  end
  def parse
      filepath ="https://www.allrecipes.com/search/results/?search=#{@ingredient}"
      #  filepath = "sesame_results.html"
      html_doc =URI.open(filepath).read
      #  html_doc =File.open(filepath).read  # This used for local files.

      doc = Nokogiri::HTML(html_doc)
      results = []
      doc.css(".card__detailsContainer-left").first(2).each do |element|
        name = element.search(".card__title").text.strip
        description = element.search(".card__summary").text.strip
        results << Recipe.new(name: name, description: description, rating: nil, prep_time: nil)
      end
    return results  #  Array of instances
  end
end
