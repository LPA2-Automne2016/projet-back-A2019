require 'test_helper'

class CounterTest < ActiveSupport::TestCase
  test "should increment the value" do
    counter = Counter.new
    counter.value = 0

    counter.increment!
    
    assert counter.value == 1
  end
end
