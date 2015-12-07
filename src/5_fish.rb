# performance: 25%
# correctness: 75%

def solution(a, b)
    # write your code in Ruby 2.2
    size = a.size
    for i in 0..(size-1)
      if i < a.size 
        a,b = compare(a,b,i, b[i])
      end
    end
    a.size
end

def compare(a, b, index, increment)
  increment = -1 if increment == 0 
  puts "b"
  puts index.to_s + "- #{a[index]} - #{a[index + 1]} - #{increment}" 
  puts index.to_s + "- #{b[index]} - #{b[index + 1]} - #{increment}" 
  return a,b if (b[index + increment]).nil?
  return a,b if (index + increment) == a.size or (index + increment) == -1
  if b[index] != b[index + increment] 
    if a[index] < a[index + increment]
      puts "deletou!"
      a.delete_at index    
      b.delete_at index
    else
      puts "deletou + 1! " 
      a.delete_at(index + increment)    
      b.delete_at(index + increment)
      index -= 1 if increment == -1 and index >0
    end
    puts "a"
    compare a, b , index, increment
  else
    return a, b    
  end
end

puts solution([3,4,5,6,7,8,9],[1,0,1,0,1,0,1])
puts solution([3,4,5,6,7,8,9],[0,0,0,0,0,0,1])
