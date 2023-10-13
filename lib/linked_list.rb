class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    #first input is BOTH the head and the tail?
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      #iterate over list until next_node = nil, then insert new_node
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = new_node
    end
  end

  def count
    count = 0
    #start at the head
    current_node = @head
    #iterate over list until final node, add 1 to count
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    #display count
    count
  end

end

