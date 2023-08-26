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
    current = @head
    total = 1
    if @head == nil
      total = 0
    else
      while current.next_node != nil
        current = current.next_node
        total += 1
      end
    end
    total
  end

  def to_string
    string = ""
    current = @head
    while current != nil
      string << current.data.to_s + " "
      current = current.next_node
    end
    string.strip
    #binding.pry
  end
end