require 'nokogiri'
require 'httparty'
require 'byebug'
require 'csv'

def scraper
  url = 'https://meqasa.com/'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  featured_houses = []
  all_house = parsed_page.css('div.one-featured-prop') # 121 houses
  all_house.each do |home|
    featured_houses << home.content
  end
  houses = []
  featured_houses.each do |house|
    new_house = house.split
    houses << new_house
end
csv = []
h = %w[status description bed washroom garage]
CSV.open('data.csv', 'w', write_headers: true, headers: h) do |csv|
  houses.each do |house|
    csv << house
  end 
end

  byebug
end
scraper
