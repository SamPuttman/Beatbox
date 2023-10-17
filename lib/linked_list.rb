#https://medium.com/@zylberberg.jonathan/linked-lists-f656bd22f2fa
#https://hackernoon.com/understanding-linkedlist-data-structure-in-ruby-4q653yqo



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
  def insert(position, data)
    new_node = Node.new(data)
  #basically same as prepend method  
    if position == 0
      new_node.next_node = @head
      @head = new_node
  #otherwise, iterate over list until position and append?
    else
      current_node = @head
      (position - 1).times do
        break if current_node == nil
        current_node = current_node.next_node
      end
    end
  #update new_node to current_node if valid node is found, similar to append.
    if current_node != nil
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    else
      puts "ERROR UNABLE TO INSERT AT POSITION #{position}. DOUBLE CHECK LIST LENGTH"
    end
  end

  #find method - looks to work like find(start position, end position)
  #convert list into array (copy to_string and then convert to array?)
  #returns string containing all positions between start and end.
  #include? return data

  def find(start_pos, end_pos)
    string_result = ""
    current_node = @head

    while current_node != nil
      string_result += current_node.data.to_s
      string_result += " " if current_node.next_node
      current_node = current_node.next_node
    end
    return string_result.split.slice(start_pos, end_pos).join(" ")
  end

  #copy to_string method and add include? lol 
  def includes?(search_term)
    string_result = ""
    current_node = @head

    while current_node != nil
      string_result += current_node.data.to_s
      string_result += " " if current_node.next_node
      current_node = current_node.next_node
    end
    string_result.include?(search_term)
  end

  # .pop - no idea what to do with this one. Can't get it to work.

end


