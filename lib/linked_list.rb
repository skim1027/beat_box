class LinkedList
  attr_reader :head, :count
   def initialize
    @head = nil 
    @count = 0
  end

  def append(sound)
    @head = Node.new(sound)
   
  end

  def count
    if head = nil
      count = 0
    else
      @count += 1
    end
  end

  def to_string
    
  end
end