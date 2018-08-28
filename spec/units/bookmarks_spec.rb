require 'bookmarks'

describe Bookmarks do
  describe '#all' do
    it 'shows a list of all saved bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include 'www.google.com'
    end
  end
end
