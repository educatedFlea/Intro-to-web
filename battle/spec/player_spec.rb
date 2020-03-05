require 'player'

RSpec.describe Player do 
  subject(:mario) { Player.new('Mario') }
  subject(:luigi) {Player.new('Luigi')}

  describe '#name' do
    it 'returns player name' do 
      expect(mario.name).to eq 'Mario'
    end
  end

  describe '#hit_points' do 
    it 'returns the hit point' do 
      expect(mario.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end 
  end 

  describe '#receive_damage' do 
    it 'reduces the players HP' do 
      expect{luigi.receive_damage}.to change {luigi.hit_points}.by -10
    end 
  end 
end 