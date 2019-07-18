#frozen_string_literal:ture

class QuickUF
  # set constructor
  def initialize(n)
    @count = n# number of components
    @id = Array.new(n)
    id.each_with_index do |item index|
      item = index
    end
  end
  # return the number of components
  def count()
    return @count
  end

