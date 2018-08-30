feature 'show bookmarks' do

    scenario 'shows a list of all saved bookmarks' do
      visit '/bookmarks'
      expect(page).to have_content 'http://www.makersacademy.com'
    end


end

feature 'add bookmarks' do

  scenario 'adds a bookmark to the list of bookmarks' do
    visit '/add'
    fill_in 'url', with: 'www.reddit.com'
    click_on 'submit'
    expect(page).to have_content 'www.reddit.com'
  end
end