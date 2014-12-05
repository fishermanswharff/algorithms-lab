class Array
  def search(num)
    p self.middle
    if num == self.middle
      p 'the index of number is ' + self.index(num).to_s
    elsif num < self.middle && num >= 0
      p 'the index of number is ' + (0..self.middle).collect { |x| self.index(x) if x == num }.compact[0].to_s
    elsif num > self.middle && num <= self.length
      p 'the index of number is ' + (self.middle..self.length).collect { |x| self.index(x) if x == num }.compact[0].to_s
    elsif num > self.length || num < 0
      p 'that is not a valid search'
    end
  end
  def middle
    (self.length/2).round
  end

end

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
array.search(19)