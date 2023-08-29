class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(sound)
    split_sound = sound.split(' ')
    split_sound.each do |split|
      @list.append(split)

    end
  end

  def count
    @list.count
  end

  def play
    "say -r 500 Boing #{}"
  end
end