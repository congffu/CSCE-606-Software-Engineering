# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  res = 0
  if arr.length == 0
    return res
  else
    for i in arr
      res += i
    end
    return res
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    res = arr[-1] + arr[-2]
    return res
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  res = Hash.new
  if arr.length == 0
    return false
  else
    for i in 0..(arr.length - 1)
      if res.key?(arr[i])
        return true
      end
      res[n-arr[i]] = i
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 || !s[0].match?(/[[:alpha:]]/)
    return false
  end
  s = s.upcase
  non_consonant_arr = ['A', 'E', 'I', 'O', 'U']
  if non_consonant_arr.include? s[0]
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if !s.chars.all? {|x| x =~ /[01]/}
    return false
  end
  s = s.to_i(base=2)
  if s % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price 
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn.length == 0 || @price <= 0
      raise ArgumentError
    end
  end
  
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
  
end
