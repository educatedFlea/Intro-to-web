require 'player'

RSpec.describe Player do 
  subject(:chloe) { Player.new('Chloe') }
  
  describe '#name' do
    it 'returns player name' do 
      expect(chloe.name).to eq 'Chloe'
    end
  end

end 