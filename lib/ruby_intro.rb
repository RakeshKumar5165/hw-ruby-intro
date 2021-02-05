# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if(arr==nil) 
      then
      return 0
  end
  sum1 = 0
  for i in arr
    sum1 = sum1 + i
  end
  return sum1
end

def max_2_sum arr
  # YOUR CODE HERE
  if(arr==nil || arr.length()==0) 
      then
      return 0
  end
  
  if(arr.length() == 1) 
      then
      return arr[0]
  end
  
  maxArr = arr.max(2)
  return maxArr[0] + maxArr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if(arr==nil) 
      then
      return false
  end
  map = Hash.new
  counter = 0
    for i in arr
      counter = counter+1
        if (map.has_key?(i))
            then
                return true
        else
                map[n-i] = 1
        end
    end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
    return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s==nil) 
      then
      return false
  end
  
  x = /\A(?=[^aeiouAEIOU])(?=[a-z])/i.match(s);
  if(x==nil) 
    then 
      return false;
  else 
    return true;
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s == ""
        then
        return false;
    end
    
    if (s !~ /[^0]/)
        then return true;
    end
    
    if (s !~ /[^01]/) then
        x = /100\z/.match(s);
        if(x==nil) then return false;
        else return true;
        end
    else
        return false;
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn, :price
    def initialize(isbn, price)
        if(isbn == "")
        then
            raise ArgumentError.new("ISBN cannot be empty string" )
        end
        if(price<=0)
        then
            raise ArgumentError.new("Expected a value great than 0 for price, got #{price}") 
        end    
        @isbn = isbn
        @price = price
    end
    
    def price_as_string
        return "$%.2f" %price
    end
end
