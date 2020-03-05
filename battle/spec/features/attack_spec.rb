feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Mario attacked Luigi"
  end

  scenario 'reduce opponent hit point by 10 after attack' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_no_content 'Luigi: 60HP'
    expect(page).to have_content 'Luigi: 50HP'
  end 
end 