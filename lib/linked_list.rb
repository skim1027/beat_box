class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil 
  end

  def append(sound)
    new_node = Node.new(sound)
    if @head == nil
      @head = new_node
    else 
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = new_node
    end
  end

  def count
    if @head == nil
      return 0
    else 
      count = 0 if current = @head
      while @head.next_node == nil
        count += 1
      end
      count
    end
  end

  def to_string
    @head.data.to_s
  end
end