require "securerandom"

class Basic
  def percent_w
    %w[one two three four]
  end

  def percent_w_2
    %w(one two three four)
  end

  def percent_w_3
    %w{one two three four}
  end

  def secure_random_alphanumeric
    SecureRandom.alphanumeric(15)
  end

  def array_push
    a = [1, 2, 3, 4]
    a << 5
  end

  def here_document
    <<~HOGE
      hoge
        hoge
          hoge
    HOGE
  end

  def array_each
    ret = 0
    [1, 2, 3, 4, 5].each do |i|
      ret += i
    end
    ret
  end

  def array_to_set
    [false, 0,
     "0", :"0",
     "f", :f,
     "F", :F,
     "false", :false,
     "FALSE", :FALSE,
     "off", :off,
     "OFF", :OFF,].to_set
  end

  def array_map
    [1, 2, 3, 4, 5].map do |i|
      next i * 2 if i % 2 == 0
      i
    end
  end
end
