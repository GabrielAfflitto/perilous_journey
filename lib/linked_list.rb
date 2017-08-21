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
      @count += 1
    end
  end

  def to_string
    "The #{head.surname} family"
  end

end
