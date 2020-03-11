require 'results'

describe Results do
  describe '#format' do 
    it 'takes in "Testville, 10, L" and outputs "Testville, 100% Labour Party"' do
      expect(subject.format("Testville, 10, L")).to eq "Testville, 100% Labour Party"
    end

    it 'takes in "Testville, 10, C" and outputs "Testville, 100% Conservative Party"' do
      expect(subject.format("Testville, 10, C")).to eq "Testville, 100% Conservative Party"
    end

    it 'takes in "Testville, 10, L, 10, C" and outputs "Testville, 50% Labour Party, 50% Conservative Party"' do
      expect(subject.format("Testville, 10, L, 10, C")).to eq "Testville, 50% Labour Party, 50% Conservative Party"
    end

    it 'takes in "Testville, 1, L, 1, C, 1, UKIP, 1, G" and outputs "Testville 25% Labour Party 25% Conservative Party 25% UKIP 25% Green Party"' do
      expect(subject.format("Testville, 1, L, 1, C, 1, UKIP, 1, G")).to eq "Testville, 25% Labour Party, 25% Conservative Party, 25% UKIP, 25% Green Party"
    end

    it 'takes in "Cardiff West, 11014, C, 17803, L, 4923, UKIP, 2069, LD" and outputs "Cardiff West 31% Conservative Party 50% Labour Party 14% UKIP 6% Liberal Democrats"' do
      expect(subject.format("Cardiff West, 11014, C, 17803, L, 4923, UKIP, 2069, LD")).to eq "Cardiff West, 31% Conservative Party, 50% Labour Party, 14% UKIP, 6% Liberal Democrats"
    end

  end
end