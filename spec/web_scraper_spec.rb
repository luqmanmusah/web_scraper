require '../bin/web_scraper'

# describe '#parsed_page' do
# let(:url) {'https://meqasa.com/'}
# let(:unparsed_page) {HTTParty.get(url)}
# let(:parsed) {Nokogiri::HTML(unparsed_page)}
#     it 'return an object of type nokogiri' do
#     expect(parsed_page).to eql(parsed)
#     end
# end

describe '#featured' do
    it 'return an array' do 
    expect(featured().class).to eq(Array) 
    end
end

describe '#scraper' do 
    it 'shoud return an Array of the houses' do
        expect(scraper.class).to eql(Array)
    end
    it 'should return the length of the houses' do
        expect(scraper.length > 50).to eql true 
    end
end
