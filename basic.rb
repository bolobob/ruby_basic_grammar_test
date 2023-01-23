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
end
