class LinkedList
  attr_accessor :head, :count
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
    new_node = Node.new(sound)  
    if @head == nil
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(position, sound)
    new_node = Node.new(sound)
    if @head == nil
      @head = new_node
    else 
      current = @head
      binding.pry
      until current.next_node == nil

        new_node = @head
        
        new_node
      end
    end
  end

  def find(position, number)
    #finding the word at specific index position 
    #1. creat the new node 
    #2. if there is no head, new node is the head
    #while loop
    #3. if there is a head, ask a node, are you a poisition x? using loop
    #4. print the node based on the position and number of sound

    new_node = Node.new(sound)  
    if @head == nil
      @head = new_node
    else 
      current = @head

    end
  end


  def include?(sound)
    #look for the word
    #1. creat the new node 
    #2. if there is no head, new node is the head
    #while loop
    #3. if there is a head, ask a node, are you the sound?
    #4. if node is the sound, include? = true
    #5. if node is not the sound, include? = false
    
    new_node = Node.new(sound)
    if @head == nil
      false
    else 
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = new_node
    end
  end

  # def pop
  # end
  
end