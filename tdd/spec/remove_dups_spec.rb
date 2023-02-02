require "rspec"
require "remove_dups"

describe Array do
  describe "#my_uniq" do
    subject(:array) { [1, 2, 1, 3, 3] }
    let(:array2) { [3, 3, 1, 2, 1] }

    it "should remove duplicates from an array" do
      expect(array.my_uniq).to eq([1, 2, 3])
    end

    it "should return a new array" do
      expect(array.my_uniq).to_not eq(array)
    end

    it "should return the unique elements in the order that they appeared" do
      expect(array2.my_uniq).to eq([3, 1, 2])
    end
  end
end