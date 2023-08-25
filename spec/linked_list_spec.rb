require './lib/linked_list'
require './lib/node'

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
    node = Node.new('doop')

    expect(list.append('doop')).to eq(node)  
  end 

  xit 'shows next node' do
    list = LinkedList.new
    list.append('doop')

    expect(list.head.next_node).to be nil
  end

  xit 'counts nodes' do
    list = LinkedList.new
    list.append('doop')

    expect(list.count).to eq(1)
  end

  xit 'prints nodes to string' do
    list = LinkedList.new
    list.append('doop')

    expect(list.to_string).to eq('doop')
  end
end