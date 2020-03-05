feature 'Switch turns' do
  context 'seeing the current turn' do 
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Mario's turn" 
    end

    scenario 'after player 1 attacks' do 
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).to have_no_content "Mario's turn"
      expect(page).to have_content "Luigi's turn"
    end 
  end 
end