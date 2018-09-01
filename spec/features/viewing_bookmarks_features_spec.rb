feature 'show bookmarks' do
    scenario 'shows a list of all saved bookmarks' do
      visit '/bookmarks'
      expect(page).to have_content 'Makers Academy'
    end
end

feature 'add bookmarks' do
  scenario 'adds a bookmark to the list of bookmarks' do
    visit '/bookmarks'
    fill_in 'url', with: 'www.reddit.com'
    fill_in 'title', with: 'Reddit'
    click_on 'submit'
    expect(page).to have_content 'Reddit'
  end
end


feature 'delete bookmarks' do
  scenario 'deletes a bookmark from the list of bookmarks' do
    visit '/bookmarks'
    click_on 'Delete Makers Academy'
  end
end