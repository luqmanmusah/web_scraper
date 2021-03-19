require '../lib/web_scraper'

describe '#featured' do
  it 'return an array' do
    expect(featured.class).to eq(Array)
  end
  it 'shoud return an Array of the houses' do
    expect(featured.class).to eql(Array)
  end
  it 'should return the length of the houses' do
    expect(featured.length > 100).to eql true
  end
end
