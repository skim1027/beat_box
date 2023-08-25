class LinkedList
  attr_reader :head, :count
   def initialize
    @head = nil 
  end

  def append(sound)
    @head = Node.new(sound)
   
  end

  def count
    @count = 0
    if head = nil
      count = 0
    else
      @count += 1
    end
  end

  def to_string
    @head.data.to_s
  end
end