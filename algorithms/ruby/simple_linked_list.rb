# linked list 5 items 


class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def add(value)
    if @head
      current_node = @head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end
end

list = LinkedList.new
list.add(1)
list.add(2)
list.add(3)
list.add(4)
list.add(5)
