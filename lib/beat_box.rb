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
<<<<<<< HEAD
    sound = @list.to_string
      `say -r 200 -v Boing "#{sound}"`
    sound
=======
    "say -r 500 Boing #{}"
>>>>>>> e91f54d673938fa37aefe8b800c9cf9e995fa2e5
  end
end