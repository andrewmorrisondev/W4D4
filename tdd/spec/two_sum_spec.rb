require 'rspec'
require 'two_sum'

describe Array do
  describe '#two_sum' do
    subject(:array) { [-1, 0, 2, -2, 1] }
    let(:pair_sums) { array.two_sum.map { |pair| pair.map{ |idx| array[idx]}.sum } }
                        # => [[0, 4], [2, 3]]
    
    it 'should expect each position pair to be an array' do
      expect(array.two_sum).to satisfy { |pair| pair.is_a?(Array) } 
    end
  
    it 'should expect each position pair to contain two elements' do
      expect(array.two_sum).to satisfy { |pair| pair.length == 2 } 
    end
    
    it 'should expect each position pair to contain integers only' do
      expect(array.two_sum).to all(all(be_an(Integer)))
    end
      
    it 'should expect each element pair to sum to zero' do
      expect(pair_sums).to all(eq(0))
    end
    it 'should sort smaller index before bigger index' do
      expect(array.two_sum).to eq(array.two_sum.sort)
    end
    it 'should return a new array' do
      expect(array.two_sum).to_not eq(array)
    end
    it 'should find all pairs of positions where the elements sum to zero' do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end