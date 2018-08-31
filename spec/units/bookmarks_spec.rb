require 'bookmarks'

describe Bookmarks do
  let(:bookmarks) { described_class }
  let(:fetched_bookmarks) { bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks) }
  let(:title) { "Medium" }
  let(:url) { "www.medium.com" }
  let(:id) { 1 }
  let(:bookmarks_object) { described_class.new(url, title, id)}


  describe '#add' do
    it 'adds a bookmark' do
      bookmarks.add(url, title)
      expect(fetched_bookmarks[-1].title).to eq title
      expect(fetched_bookmarks[-1].url).to eq url
    end
  end


  describe '#delete' do
    it 'deletes a bookmark' do
      example_object = bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks)
      bookmarks.delete(id)
      example_object2 = bookmarks.prettify_bookmarks(bookmarks.fetch_bookmarks)      
      expect(example_object.length).to eq (example_object2.length + 1)
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

  describe '#id' do
    it 'has an id do' do
      expect(bookmarks_object.id).to eq id
    end
  end

end