class LinkedList
  attr_reader :head
   def initialize
    @head = nil 
  end

  def append(sound)
    @append = Node.new(sound)
  end


end