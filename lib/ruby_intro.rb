# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  sum arr.sort{|x, y| y <=> x}.take 2
end

def sum_to_n? arr, n
  if arr.length > 1
    arr.each_index do |i|
      arr.drop(i + 1).each do |x|
        return true if n == arr[i] + x
      end
    end
  end
  false
end

# Part 2

def hello(name)
  p "Hello, #{name}"
end

def starts_with_consonant? s
  first_char = s[0]
  if not s.empty? and first_char =~ /[a-z]/i
    !first_char.match /[aeiou]/i
  else
    false
  end
end

def binary_multiple_of_4? s
  binary = s.to_i(2) if s =~ /^[01]+$/
  binary ? binary % 4 == 0 : false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    number, fraction = self.price.to_s.split '.'
    if fraction
      price_formatted = fraction.length == 1 ? "$#{self.price}0" : "$#{self.price}"
    else
      price_formatted = "$#{self.price}.00"
    end
    price_formatted
  end
  
end
