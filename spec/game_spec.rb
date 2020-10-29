require_relative  '../lib/game'

describe Game do
  let(:to_be_attacked ) {double :to_beat}
  it { is_expected.to respond_to(:attack) }

  describe "#attack" do
    it "damages the player" do
      expect(to_be_attacked).to receive(:receive_damage)
      subject.attack(to_be_attacked)
    end
  end
end
