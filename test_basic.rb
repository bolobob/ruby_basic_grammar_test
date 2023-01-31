require "minitest/autorun"
require "Set"
require "./basic"

class TestBasic < Minitest::Test
  def setup
    @basic = Basic.new
  end

  def test_that_percent_w
    assert_equal 4, @basic.percent_w.size
  end

  def test_that_percent_w_2
    assert_equal 4, @basic.percent_w_2.size
  end

  def test_that_percent_w_3
    assert_equal 4, @basic.percent_w_3.size
  end

  def test_that_secure_random_alphanumeric
    assert_equal 15, @basic.secure_random_alphanumeric.size
  end

  def test_that_array_push
    assert_equal 5, @basic.array_push.size
  end

  def test_ヒアドキュメント
    hoge = <<HOGE
hoge
  hoge
    hoge
HOGE
    assert_equal hoge, @basic.here_document
  end

  def test_配列のeach
    assert_equal 15, @basic.array_each
  end

  def test_Set
    assert_equal Set[false, 0,
                     "0", :"0",
                     "f", :f,
                     "F", :F,
                     "false", :false,
                     "FALSE", :FALSE,
                     "off", :off,
                     "OFF", :OFF,], @basic.array_to_set
  end

  def test_配列のmap
    assert_equal [1, 4, 3, 8, 5], @basic.array_map
  end
end
