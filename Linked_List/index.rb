class Node
  attr_accessor :value, :next_node

  def initialize (value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
 
class Linked_List

  def initialize(head = nil)
    @head = head
  end 

  def append(value)
    if @head
      nodo_actual = @head
      while nodo_actual.next_node
        nodo_actual = nodo_actual.next_node
      end
      node = Node.new(value)
      nodo_actual.next_node = node
    elsif head == nil 
      node = Node.new(value)
      @head = node
    end
  end
  def prepend(value)
    new_head = Node.new(value,@head)
    @head = new_head
  end

  def size
    count_node = 0
    nodo_actual = @head
    while nodo_actual
      count_node += 1
      nodo_actual = nodo_actual.next_node
    end
    return count_node
  end

  def tail
    if !@head
      return nil
    end
    nodo_actual = @head
    while nodo_actual.next_node
      nodo_actual = nodo_actual.next_node
    end
    nodo_actual.value
  end
  
  def at(index)
    count_node = 0
    nodo_actual = @head
    value = nil
    while nodo_actual
      if index == count_node
        value = nodo_actual.value
      end
      count_node += 1
      nodo_actual = nodo_actual.next_node
    end
    return value
  end

  def pop
    return nil if !@head
    head_value = @head.value
    @head = @head.next_node
    head_value
  end

  def contains?(value)
   
    nodo_actual = @head
    while nodo_actual
      if value == nodo_actual.value
        return true
      end
      nodo_actual = nodo_actual.next_node
    end
    return false
  end

  def index(value)
    nodo_actual = @head
    index = 0
    while nodo_actual
      if value == nodo_actual.value
        return index
      end
      index += 1
      nodo_actual = nodo_actual.next_node
    end
    return nil
  end

  def to_s
    return "" if !@head
    out_string = ""
    nodo_actual = @head
    while nodo_actual
     out_string += "( #{nodo_actual.value} ) -> " 
     nodo_actual = nodo_actual.next_node
    end
    return out_string + "nil" 
  end

  def head
    if !@head
      return nil
    end
    @head.value
  end
end

