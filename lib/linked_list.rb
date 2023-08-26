class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil 
  end

  def append(sound)
    new_node = Node.new(sound)
    if @head == nil
      @head = new_node
    end

    current = @head
    while current.next_node != nil
      current = current.next_node
    end
      current.next_node = new_node
  end

  def count
    @count =0
    if @head == nil
      return 0
    else @head.next_node == nil
      return @count += 1
    end 
  end

  def to_string
    @head.data.to_s
  end
end