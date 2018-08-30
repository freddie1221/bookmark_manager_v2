require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { described_class }
  let(:fetched_bookmarks) { bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks) }
  let(:title) { "Medium" }
  let(:url) { "www.medium.com" }

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
      expect(fetched_bookmarks).to include [url, title]
    end
  end
end