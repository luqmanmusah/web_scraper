require 'nokogiri'
require 'httparty'
require 'byebug'
require 'csv'

def parsed_page
  url = 'https://meqasa.com/'
  unparsed_page = HTTParty.get(url)
  Nokogiri::HTML(unparsed_page)
end

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

def scraper
  houses = featured
  h = %w[status description bed washroom garage location]
  CSV.open('data.csv', 'w', write_headers: true, headers: h) do |csv|
    houses.each do |house|
      house[0] = house[0..1].join(' ')
      house[1] = house[2..9].join(' ').split('at')[0]
      house[5] = house[2..9].join(' ').split('at')[1]
      if house[house.length - 3].scan(/\D/).empty?
        house[2] = house[house.length - 3]
        house[3] = house[house.length - 2]
        house[4] = house[house.length - 1]

      else
        house[2] = house[house.length - 2]
        house[3] = house[house.length - 1]
        house[4] = '0'
      end
      house.slice!(6..house.length - 1)
      csv << house
    end
  end
  # byebug
end
scraper
