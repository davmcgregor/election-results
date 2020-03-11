require 'results'

describe Results do
  describe '#format' do 
    it 'takes in "Testville, 10, L" and outputs "Testville, 100% Labour Party"' do
      expect(subject.format("Testville, 10, L")).to eq "Testville, 100% Labour Party"
    end
  end
end