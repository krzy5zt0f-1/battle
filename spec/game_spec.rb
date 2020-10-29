require_relative  '../lib/game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }


  it { is_expected.to respond_to(:attack_player1) }
  it { is_expected.to respond_to(:attack_player2) }

  describe "#attack_player1" do
    it "damages the player1" do
      allow(player1).to receive(:new).and_return("name")
      expect(player1).to receive(:receive_damage)
      subject.attack_player1
    end
  end

  describe "#attack_player2" do
    it "damages the player2" do
      allow(player2).to receive(:new).and_return("name")
      expect(player2).to receive(:receive_damage)
      subject.attack_player2
    end
  end

end
