class LinkedList
  attr_reader :head, :count
   def initialize
    @head = nil 
  end

  def append(sound)
    @head = Node.new(sound)
    # new_node = Node.new(sound)
    #   if @head.nil?
    #     @head = new_node
    #   else
    #     current = @head
    #     current = current.next until current.next.nil?
    #     current.next = new_node
    #   end
  end

  def count
    @count =0
    if @head == nil
      return 0
    elsif @head.next_node == nil
      return @count += 1 
    end 
  end

  def to_string
    @head.data.to_s
  end
end