require 'pry'
require './lib/node'
class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    @count += 1
    if @head.nil?
      @head = Node.new(surname)
    elsif @head != nil
      @head.next_node = Node.new(surname)
    end
  end

  def prepend(surname)
    @count += 1
    if @head.nil?
      @head = Node.new(surname)
    else
      old = @head
      @head = Node.new(surname)
      @head.next_node = old
    end
  end

  def insert(index, surname)
    current = @head
    @count += 1
  (index - 1).times do
    if current.nil?
    current = current.next_node
    end
  end

  new_node = Node.new(surname)
  new_node.next_node = current.next_node
  current.next_node = new_node
  end

  def to_string
    current = @head
    string = "The #{current.surname} family"
    while current.next_node != nil
      current = current.next_node
      string << ", followed by the #{current.surname} family"
    end
    string
  end

  def find(position, number)
    current = @head
    string = ""
    position.times do
      current = current.next_node
    end
    string << "The #{current.surname} family"
  end

end
