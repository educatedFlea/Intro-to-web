def sign_in_and_play
  visit('/')
  @game = Game.new('Mario','Luigi')
  fill_in :player_1_name, with: "Mario"
  fill_in :player_2_name, with: "Luigi"
  click_button "Submit"
end 