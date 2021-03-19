require '../lib/web_scraper'

describe '#featured' do
  it 'return an array' do
    expect(featured.class).to eq(Array)
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
