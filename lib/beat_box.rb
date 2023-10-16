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

end