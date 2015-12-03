def solution(n, a)
  c = Array.new(n,0)
  max = 0 
  a.each do |item|
    if item == n + 1 
      c.fill(max)
    else 
      c[item - 1] = c[item - 1] + 1 
      max = c[item - 1] if c[item - 1] > max 
    end          
  end
  c
end

a = [3]
puts solution 5,a