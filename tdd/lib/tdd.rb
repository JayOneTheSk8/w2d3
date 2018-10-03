class Array
  def my_uniq
    self.reduce([]) { |uniques, el| uniques.include?(el) ? uniques : uniques << el }
  end
end
