require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
    url = "https://meqasa.com/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    first_house = parsed_page.css('div.one-featured-prop') #121 houses
    first_house.each do |houses|
        house = {
            Status: first_house.css('label').text,
            Information: first_house.css('p').text,
        }
    byebug
    end
    
end

scraper