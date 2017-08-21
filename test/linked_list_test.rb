require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'
require './lib/linked_list'


class LinkedListTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_for_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_can_be_appended
    list = LinkedList.new

    list.append("West")

    assert_equal "West", list.head.surname
  end

  def test_count_for_1
    list = LinkedList.new

    list.append("West")

    assert_equal 1, list.count
  end

  def test_it_can_be_converted_to_string
    list = LinkedList.new

    list.append("West")

    assert_equal "The West family", list.to_string
  end

  def test_can_be_appended_further
    list = LinkedList.new

    assert list.append("Rhodes")
  end



end
