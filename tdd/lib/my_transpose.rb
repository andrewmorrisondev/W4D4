class Array
  def my_transpose
    transposed_array = []

    (0..self.length-1).each do |col_idx|
      col_values = []
      (0..self.length-1).each do |row_idx|
        col_values << self[row_idx][col_idx]
      end
      transposed_array << col_values
    end
    transposed_array
  end
end