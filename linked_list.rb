class LinkedList
  attr_accessor :head

  def initialize(element)
    @head = element
  end

  def append(element)
    current_element = @head
    until current_element.nil?
      if current_element.pointer.nil?
        return current_element.pointer = element
      end
      current_element = current_element.pointer
    end
  end

  def prepend(element)
    element.pointer = @head
    @head = element
  end

  def find(value)
    result = false
    current_element = @head
    until current_element.nil? || result
      result = current_element.value == value
      current_element = current_element.pointer
    end
    result
  end

  def insert_after(existing_element, insert_element)
    current_element = @head
    until current_element.nil?
      if current_element == existing_element
        insert_element.pointer = current_element.pointer
        current_element.pointer = insert_element
        return
      end
      current_element = current_element.pointer
    end
  end

  def remove(element)
    current_element = @head
    until current_element.nil?
      if current_element.pointer == element
        current_element.pointer = element.pointer
        return
      end
      current_element = current_element.pointer
    end
  end

  def length
    result = 0
    current_element = @head
    until current_element.nil?
      result += 1
      current_element = current_element.pointer
    end
    result
  end

  def to_s
    result = ""
    current_element = @head
    until current_element.nil?
      result += current_element.value
      current_element = current_element.pointer
    end
    result
  end
end
