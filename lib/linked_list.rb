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
    if @head == nil
      total = 0
    else
      total = 1
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
  end


  def prepend(sound)
    # adding a node in the beginning
    new_node = Node.new(sound)  
    #1. ask the head are you the head?
    if @head == nil
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
    #2. add the node in front 
  end

  def insert(position, word)
    #adding a node at a specific location
    #1. creat the new node 
    new_node = Node.new(sound)  
    
    #4. add the node in front of that position
    if @head == nil
      @head = new_node
      #2. ask a node, are you a poisition x? using loop
    else 
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = new_node
    end
    #3. need a pointer for the old position  
  end
end