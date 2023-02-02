class Array
  def two_sum
    track_hash = {}
    pair_positions = []

    self.each_with_index do |ele, idx|
      if track_hash.has_key?(-ele)
        pair_positions << [track_hash[-ele], idx]
      end
      track_hash[ele] = idx
    end
    pair_positions.sort
  end
end