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

    it 'takes in "Islington South & Finsbury, 22547, L, 9389, C, 4829, LD, 3375, UKIP, 3371, G, 309, Ind" and outputs "Islington South & Finsbury 51% Labour Party 21% Conservative Party 11% Liberal Democrats 8% UKIP 8% Green Party 1% Independent"' do
      expect(subject.format("Islington South & Finsbury, 22547, L, 9389, C, 4829, LD, 3375, UKIP, 3371, G, 309, Ind")).to eq "Islington South & Finsbury, 51% Labour Party, 21% Conservative Party, 11% Liberal Democrats, 8% UKIP, 8% Green Party, 1% Independent"
    end
  end
end