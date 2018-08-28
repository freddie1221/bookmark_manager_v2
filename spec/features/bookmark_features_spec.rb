feature 'Bookmark Manager' do 
  
  feature 'Viewing bookmarks' do
    it 'shows a list of all saved bookmarks' do 
      visit '/'
      expect(page).to have_content 'Hello world'
    end
  end


end
