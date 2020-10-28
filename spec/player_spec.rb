require_relative  '../lib/player'

describe Player do
  subject { described_class.new("Name") }
  it { is_expected.to respond_to(:name) }

  describe ".name" do
    it "returns name of a player" do
      expect(subject.name).to eq "Name"
    end
  end
end
