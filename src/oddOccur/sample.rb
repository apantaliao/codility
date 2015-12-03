
#22.27
def find_unpaired (array_to_analyze)
  array_to_analyze.group_by{|elem| elem}.select{|key, value| value.length == 1}.first[0]
end


puts find_unpaired ([3,1,9,9,4,3,1])