require 'bookmarks'

describe Bookmarks do
 describe '#all' do
   it 'shows a list of all saved bookmarks' do
     bookmarks = Bookmarks.fetch_bookmarks
     expect(bookmarks).to include 'http://makersacademy.com'
   end
 end
end