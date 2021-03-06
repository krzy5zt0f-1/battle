require_relative  '../lib/player'

describe Player do
  subject { described_class.new("Name") }
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:hp) }

  describe ".name" do
    it "returns name of a player" do
      expect(subject.name).to eq "Name"
    end
  end

  describe ".hp" do
    it "returns name of a player" do
      expect(subject.hp).to eq Player::DEFAULT_HP
    end
  end

  describe ".receive_damage" do
    it "reduces the player hp" do
      expect { subject.receive_damage}.to change { subject.hp}.by(-10)
    end
  end
end
