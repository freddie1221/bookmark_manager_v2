require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { described_class }
  let(:fetched_bookmarks) { bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks) }
  let(:title) { "Medium" }
  let(:url) { "www.medium.com" }
  let(:bookmarks_object) { described_class.new(url, title)}

  # describe '#fetch_bookmarks' do
  #   it 'shows a list of all saved bookmarks' do
  #     expect(fetched_bookmarks).to include 'http://www.makersacademy.com'
  #     expect(fetched_bookmarks).to include 'http://www.google.com'
  #     expect(fetched_bookmarks).to include 'http://www.destroyallsoftware.com'
  #   end
  # end

  describe '#add' do
    it 'adds a bookmark' do
      bookmarks.add(url, title)
      expect(fetched_bookmarks[-1].title).to eq title
      expect(fetched_bookmarks[-1].url).to eq url
    end
  end

  describe 'create object' do
    it 'new bookmark object can receive two arguments' do
      expect { bookmarks_object }.not_to raise_error
    end
  end
  
  describe '#url' do
    it 'has a url' do
      expect(bookmarks_object.url).to eq url
    end
  end

  describe '#title' do
    it 'has a title' do
      expect(bookmarks_object.title).to eq title
    end
  end

end