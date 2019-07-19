#frozen_string_literal:ture

class QuickFindUF
  # set constructor
  def initialize(n)
    @count = n# number of components
    @id = Array.new(n)
    @id.each_index do |i|
      @id[i] = i
    end
  end

  # return the number of components
  def count()
    return @count
  end
  # return id array
  def getId()
    return @id
  end

  # get the id of the component
  def find(p)
    validate(p)
    return @id[p]
  end

  # validate the components and throws exceptions
  def validate(p)
    l = @id.length
    
    if p < 0 or p >= l
        raise ArgumentError.new("Index " + p.to_s + " is out of range!")
    end
  end

  # test if two nodes are connected
  def connected(p, q)
    validate(p)
    validate(q)
    return @id[p] == @id[q]
  end

  # connect two nodes
  def union(p,q)
    validate(p)
    validate(q)
    
    pID = @id[p]
    qID = @id[q]

    if pID == qID
      return
    end

    @id.each_index do |i|
      if @id[i] == pID
        @id[i] = qID
      end
    end
    @count -= 1 
  end
end

# test
uf = QuickFindUF.new(10)
uf.union(1,2)
#puts uf.connected 1, 2
uf.union(2,8)
puts uf.connected 1,8
puts uf.count





