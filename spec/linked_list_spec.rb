require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe LinkedList do
  it 'exist' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'shows status of head' do
    list = LinkedList.new

    expect(list.head).to be nil
  end

  it 'appends data to head' do
    list = LinkedList.new
    list.append('doop')

    expect(list.head.data).to eq('doop')
    expect(list.head).to be_instance_of(Node)
  end 

  it 'shows next node' do
    list = LinkedList.new
    list.append('doop')

    expect(list.head.next_node).to be nil
  end

  it 'counts nodes' do
    list = LinkedList.new
    list.append('doop')

    expect(list.count).to eq(1)
  end

  it 'prints nodes to string' do
    list = LinkedList.new
    list.append('doop')

    expect(list.to_string).to eq('doop')
  end

  it 'adds another sound' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')
    
    expect(list.head.next_node).to be_instance_of(Node)
    expect(list.head.next_node.next_node).to be nil
  end 
    
  it 'counts the sound' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.count).to eq(2)
  end

  it 'converts the sound to string' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.to_string).to eq('doop deep')
  end

  it 'prepend the sound in the first position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq('dop plop suu')
  end

  it 'insert the sound at a location' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, 'woo')

    expect(list.to_string).to eq('dop woo plop suu')
  end
end