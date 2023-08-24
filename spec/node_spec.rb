require './lib/node'

RSpec.describe Node do
  it 'exist' do
    node = Node.new('plot')

    expect(node).to be_instance_of(Node)
  end

  it 'contains data' do
    node = Node.new('plot')

    expect(node.data).to eq('plot')
  end

  it 'contains next node' do
    node = Node.new('plot')

    expect(node.next_node).to be nil
  end
end