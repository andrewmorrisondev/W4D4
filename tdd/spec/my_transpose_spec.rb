require "rspec"
require "my_transpose"

describe Array do
  describe "#my_transpose" do
    subject(:array) { 
      [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
    }

    let(:transposed_array) {
      [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]
    }

    let(:array2) {
      [
        [0, 3, 6, 4],
        [1, 4, 7, 10],
        [2, 5, 8, 3],
        [1, 2, 3, 4]
      ]
    }

    let(:transposed_array2) {
      [
        [0, 1, 2, 1],
        [3, 4, 5, 2],
        [6, 7, 8, 3],
        [4, 10, 3, 4]
      ]
    }

    it "should return a new 2d array" do
      expect(array.my_transpose).to_not be(array)
    end

    it "should have the same number of rows as the original" do
      expect(array.my_transpose.size).to eq(3)
    end

    it "should have the same number of columns as the original" do
      array.my_transpose.each do |row|
        expect(row.count).to eq(3)
      end
    end

    it "should not change position [0,0], [1, 1], or [2,2]" do
      expect(array.my_transpose[0][0]).to eq(0)
      expect(array.my_transpose[1][1]).to eq(4)
      expect(array.my_transpose[2][2]).to eq(8)
    end

    it "should correctly flip the rows and columns" do
      expect(array.my_transpose).to eq(transposed_array)
    end

    it "should work on a square array of any size" do
      expect(array2.my_transpose).to eq(transposed_array2)
    end

  end
end