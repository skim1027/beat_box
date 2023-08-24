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

  it 'appends data' do
    list = LinkedList.new
    list.append('doop')

    expect(list).to be(LinkedList) 
  end

  
end