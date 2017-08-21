require 'minitest/pride'
require 'minitest/autorun'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_first_node_for_burke
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_next_node_for_nil
    node = Node.new("Burke")

    assert_nil node.next_node
  end

end
