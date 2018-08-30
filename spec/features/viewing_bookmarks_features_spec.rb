feature 'show bookmarks' do

    scenario 'shows a list of all saved bookmarks' do
      visit '/bookmarks'
      expect(page).to have_content 'Makers Academy'
    end


end

feature 'add bookmarks' do

  scenario 'adds a bookmark to the list of bookmarks' do
    visit '/add'
    fill_in 'url', with: 'www.reddit.com'
    fill_in 'title', with: 'Reddit'
    click_on 'submit'
    expect(page).to have_content 'Reddit'
  end
end