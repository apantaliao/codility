
def find_path(x, a)
  max_occurency = 0
  for i in 1..x
    occurrency = a.index(i)
    return -1 if occurrency.nil?
    max_occurency = occurrency if occurrency > max_occurency 
  end
  max_occurency
end

a = [1,3,1,4,2,3,5,4]
puts find_path(5, a)
