require './lib/wagon_train'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class WagonTrainTest < Minitest::Test
  def test_it_exists
    wt = WagonTrain.new

    assert_instance_of WagonTrain, wt
  end

  def test_for_list_head
    wt = WagonTrain.new

    assert_nil wt.list.head
  end

  def test_for_append_method
    wt = WagonTrain.new
    wt.append("Burke")
    # binding.pry
    assert_equal "Burke", wt.list.head.surname
  end

  def test_west_can_be_appended
    wt = WagonTrain.new
    wt.append("Burke")
    wt.append("West")

    assert_equal "West", wt.list.head.next_node.surname
  end

  def test_the_count_is_2
    wt = WagonTrain.new
    wt.append("Burke")
    wt.append("West")
    
    assert_equal 2, wt.count
  end

end
