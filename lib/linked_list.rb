class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      #utilize until
      #iterate over list until next_node = nil, then insert new_node
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = new_node
    end
  end

  def count
    count = 0
    #start at the head
    current_node = @head
    #utilize while to loop until tail node
    #iterate over list from the head until final node, add 1 to count for each iteration
    while current_node != nil
      count += 1
      current_node = current_node.next_node
    end
    #display count
    count
  end

  def to_string
    string_result = ""
    current_node = @head

    #use while again, like previous code to loop until tail node.
    while current_node != nil
      string_result += current_node.data.to_s
      #add spacing
      string_result += " " if current_node.next_node
      current_node = current_node.next_node
    end
    return string_result
  end

  #copy from line 7
  def prepend(data)
    new_node = Node.new(data)
    #if there's no head, make prepended node head
    if @head.nil?
      @head = new_node
    #else, the "next node" of the "new node" becomes the current head.
    #then update the @head to be the newly insterted node.
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  #insert method
  #2 arguments! (position, data)
  #if inserted in position 0, should become head. handle same as prepend?
  #otherwise, iterate over list until position and append?

end

