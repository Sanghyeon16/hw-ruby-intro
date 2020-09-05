# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # For an empty array it should return zero
  # Q: takes an array of integers as an argument and returns the sum of its element
  if arr.any?
    arr.inject(0, :+)
  else
    return 0
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  # For an empty array it should return zero
  # Q: takes an array of integers as an argument and returns the sum of its two largest elements
  if arr.any?
    arr.max(2).reduce(:+)
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # Q: takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n
  if arr.length  > 1
    
    arr.combination(2).each do |i|
      set_var = i.inject(0,:+)
      if set_var == n
        return true
      end
    end
    
    # no combinations the sum is n
    return false
  
  elsif arr.length == 1
    return false
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # Q: takes a string representing a name and returns the string "Hello, " concatenated with the name
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # Q: takes a string and returns true if it starts with a consonant and false otherwise
  #(?=pat) positive lookahead
  if s[0] =~ /\A(?=[^aeiou])(?=[a-z])/i
    puts "'#{s}' starts with a consonant"
    return true
  else
    puts "'#{s}' doesn't start with consonant"
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Q: takes a string and returns true if the string represents a binary number that is a multiple of 4
  if s.length == 0
    return false
  end
  
  # binary?
  if s =~ /[^01]/
    return false
  else
    # interpret binary to decimal
    if s.to_i(base=2)%4==0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
# Q: represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes
# Condition:  The constructor should accept the ISBN number (can start with 0 and include '-') and price
#             and should raise ArgumentError if the ISBM number is the empty string or price is less than or equal to zero

# price_as_string: returns the price of the book formatted with a leading dollar sign and two decimal places, that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80"

  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError.new("Exception") if isbn.empty? || price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
end
