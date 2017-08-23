require 'pry'
require './lib/linked_list'
class WagonTrain
  attr_reader :list,
              :head
  def initialize
    @list = LinkedList.new
    @head = nil
  end


end
