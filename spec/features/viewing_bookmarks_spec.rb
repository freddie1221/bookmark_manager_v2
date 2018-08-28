describe 'Bookmark Manager' do

    feature 'shows a list of all saved bookmarks' do
      visit '/'
      expect(page).to have_content 'www.google.com'
    end




end
