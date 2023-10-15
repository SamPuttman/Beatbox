class Node
  #swapped :next_node to attr_accessor so it can be given value in linked_list.rb
  attr_accessor :data, :next_node
  def initialize(data)
    @data = data
    @next_node = next_node
  end
end

