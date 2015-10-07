# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) do |sum,n|
    sum += n
  end
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  
  arr.sort.last(2).inject(0) do |sum,n|
    sum += n
  end
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each do |pair|
    return true if pair.reduce(:+) == n
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[^aeiou\W]/i =~ s
end

def binary_multiple_of_4? s
  return false if s.empty?
  unless s =~ /[^0|1]+/
    return true if s.to_i(2) % 4 == 0
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
