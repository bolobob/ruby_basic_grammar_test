require "minitest/autorun"
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
end
