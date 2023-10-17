class BeatBox
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def count
    @list.count
  end

  def append(data)
    new_lyrics = data.split(' ')
    new_lyrics.each do |new_lyric|
      @list.append(new_lyric)
    end
  end


  #takes the list in the beatbox and plays it from head until next_node = nil.
  #iteration
  #needs a way to communicate with terminal through pry. (use backticks ``)
  #needs to use string interpolation to pass into terminal.

  def play
    current_node = @list.head
    while current_node
      new_lyric = current_node.data
      #seems to not work with the -r playback rate. 
      current_node = current_node.next_node
      `say -r 1000 #{new_lyric}`
    end
  end

end