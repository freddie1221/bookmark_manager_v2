require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { described_class }

  describe '#fetch_bookmarks' do
    it 'shows a list of all saved bookmarks' do
      p ENV['RACK_ENV']

      expect(bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks)).to include 'http://www.makersacademy.com '
    end
  end
end