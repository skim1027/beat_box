require './lib/beat_box'
require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe BeatBox do
  describe '#initialize' do
    it 'initializes with list' do
      bb = BeatBox.new
      list = LinkedList.new

      expect(bb).to be_instance_of(BeatBox)
      expect(bb.list).to be_instance_of(LinkedList)
      expect(bb.list.head).to be nil
    end
  end

  describe '#append' do
    it 'appends sound' do
      bb = BeatBox.new
      list = LinkedList.new
      bb.append('deep doo ditt')
      bb.append('woo hoo shu')

      expect(bb.list.head.data).to eq('deep')
      expect(bb.list.head.next_node.data).to eq('doo')
      expect(bb.count).to eq(6)
    end
  end

  describe '#play' do
    it 'plays sound' do
      bb = BeatBox.new
      list = LinkedList.new
      bb.append('deep doo ditt woo hoo shu')
      bb.play

      expect(bb.count).to eq (6)
      expect(bb.list.count).to eq(6)
    end
  end

end