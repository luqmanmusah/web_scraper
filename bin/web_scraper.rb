require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
    url = "https://meqasa.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    featured_house = parsed_page.css('div.one-featured-prop') #121 houses
    byebug
end

scraper