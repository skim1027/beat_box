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
      old = current
        position.times do 
        old = current 
        current = current.next_node 
        end
        new_node.next_node = current 
        old.next_node = new_node
    end
  end

  def find(position, number)
    current = @head 
    string = ""
      position.times do 
        current = current.next_node 
      end
      number.times do
        if current.next_node == nil
          string << current.data
        else
          string << current.data + " "
          current = current.next_node
        end
      end
      string.strip
      
  end


  def include?(sound)
    current = @head
    until current.next_node == nil
      if current.data == sound
        return true
      end
      current = current.next_node
    end
    false
  end

  def pop
    

  
  end
  


end