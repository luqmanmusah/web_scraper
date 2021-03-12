require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
  url = 'https://meqasa.com/'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  houses = []
  first_house = parsed_page.css('div.one-featured-prop') # 121 houses
  first_house.each do |_homes|
    house = {
      Status: first_house.css('label').text,
      Information: first_house.css('p').text
    }
    houses << house
  end
  #   byebug
end
scraper