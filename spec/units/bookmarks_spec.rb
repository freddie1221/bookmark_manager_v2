require 'bookmarks'

describe Bookmarks do
  describe '#all' do
    it 'shows a list of all saved bookmarks' do
      bookmarks = Bookmarks.fetch_bookmarks
      expect(bookmarks).to include 'http://www.google.com'
    end
  end
end
