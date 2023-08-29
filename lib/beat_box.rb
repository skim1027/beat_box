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
    sound = @list.to_string
      `say -r 200 -v Boing "#{sound}"`
    sound
  end
end