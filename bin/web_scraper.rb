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

CSV.open("file.csv", "wb") do |csv|
  join_houses = houses.join(" ")
  csv << join_houses
end
  byebug
end
scraper
