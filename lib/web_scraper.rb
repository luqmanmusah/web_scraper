require 'nokogiri'
require 'httparty'
require 'byebug'
require 'csv'

def featured
  parsed = parsed_page
  featured_houses = []
  all_house = parsed.css('div.one-featured-prop') # 121 houses
  all_house.each do |home|
    featured_houses << home.content
  end
  houses = []
  featured_houses.each do |house|
    new_house = house.split
    houses << new_house
  end
  houses
end
