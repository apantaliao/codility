def solution(a) 
  # Correctness 100
  # Performance 25 
  end_points = [] 
  a.each_with_index do |ai, i| 
    end_points << [i - ai, i + ai] 
  end 
  end_points = end_points.sort_by { |points| points[0]} 
  intersecting_pairs = 0  

  end_points.each_with_index do |point, index| 
    for i in (index + 1)..(end_points.size - 1) 
      if point[1] >= end_points[i][0]  
        intersecting_pairs += 1 
        return -1 if intersecting_pairs == 10000000
      end 
    end 
  end  
  intersecting_pairs 
end 