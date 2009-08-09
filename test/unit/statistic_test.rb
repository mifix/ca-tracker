require 'test_helper'

class StatisticTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Statistic.new.valid?
  end
end
