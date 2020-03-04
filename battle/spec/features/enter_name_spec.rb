feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Mario"
    fill_in :player_2_name, with: "Luigi"
    click_button "Submit"
    expect(page).to have_content "Mario vs Luigi"
  end
end