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
    # binding.pry
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

  def test_head_for_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_can_be_appended_further
    list = LinkedList.new

    list.append("Rhodes")

    assert_equal "Rhodes", list.head.surname
  end

  def test_hardy_can_be_appended
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "Hardy", list.head.next_node.surname
    assert_equal "Rhodes", list.head.surname
  end

  def test_the_count_is_2
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal 2, list.count
  end

  def test_for_to_string
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_to_string_for_brooks
    list = LinkedList.new
    list.append("Brooks")

    assert_equal "The Brooks family", list.to_string
  end

  def test_append_new_list
    list = LinkedList.new

    list.append("Brooks")
    list.append("Henderson")
    list.append("Lucy")

    assert_equal "Brooks", list.head.surname
    assert_equal "Henderson", list.head.next_node.surname
    assert_equal "Lucy", list.head.next_node.next_node.surname
  end

  def test_list_can_be_prepended
    list = LinkedList.new

    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")

    assert_equal "McKinney", list.head.surname
  end

  def test_to_string_method_with_append
    list = LinkedList.new

    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")

    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test_the_count_is_3
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")

    assert_equal 3, list.count
  end

  def test_for_insert_method_to_string_and_count
    list = LinkedList.new
    # binding.pry
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")

    assert_equal 4, list.count
    assert_equal "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test_for_find
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")

    assert_equal "The Brooks family", list.find(2, 1)
    assert_equal "The Lawson family, followed by the Brooks family, followed by the Henderson family", list.find(1, 3)
  end

  def test_for_includes
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")

    assert list.includes?("Brooks")
    refute list.includes?("Chapman")
  end

end
