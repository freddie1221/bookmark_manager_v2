feature 'Bookmark Manager' do

    scenario 'shows a list of all saved bookmarks' do
      visit '/bookmarks'
      expect(page).to have_content 'http://makersacademy.com'
    end


end