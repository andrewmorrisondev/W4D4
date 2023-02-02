class Array
  def my_uniq
    keep_track = []
    self.each do |ele|
      keep_track << ele if !keep_track.include?(ele)
    end
    keep_track
  end
end