require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe LinkedList do
  
  describe '#Initialize' do
    it 'exist' do
      list = LinkedList.new

      expect(list).to be_instance_of(LinkedList)
    end
    
    it 'shows status of head' do
      list = LinkedList.new
      
      expect(list.head).to be nil 
    end
  end
  
  describe '#append method' do
    it 'appends data to head' do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.head).to be_instance_of(Node)
      expect(list.head.data).to eq('doop')
    end 
    
    it 'shows next node' do
      list = LinkedList.new
      list.append('doop')
      expect(list.head.next_node).to be nil
    end
  end
  
  describe '#count method' do
    it 'counts nodes' do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.count).to eq(1)
    end
  end
  
  describe '#to string method' do
    it 'prints nodes to string' do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.to_string).to eq('doop')
    end
    
    it 'converts the sound to string' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      
      expect(list.to_string).to eq('doop deep')
    end
  end

  describe '#append method' do
    it 'adds another sound' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      expect(list.head.next_node).to be_instance_of(Node)
      expect(list.head.next_node.next_node).to be nil
    end 
  end

  describe '#count method' do
    it 'counts the sound' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      
      expect(list.count).to eq(2)
    end
  end

  describe '#prepend method' do
    it 'prepend the sound in the first position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq('dop plop suu')
    end
  end

  describe '#insert method' do
    it 'insert the sound at a location' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1,'woo')
  
      expect(list.to_string).to eq('dop woo plop suu')
    end
  end

  describe '#find method' do
    it 'find the sound at a lotcation' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq('deep woo shi shu blop')
      expect(list.find(2, 1)).to eq('shi')
      expect(list.find(1, 3)).to eq('woo shi shu')
    end
  end

  describe '#include? method' do
    it 'tells you if string includes a sound' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.include?('deep')).to be true
      expect(list.include?('dep')).to be false
    end
  end

  describe '#pop method' do
    it 'prints and remove last sound' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.pop).to eq('blop')
      expect(list.pop).to eq('shu')
      expect(list.to_string).to eq('deep woo shi')
    end
  end


end