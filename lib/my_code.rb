# Your Code Here
def map arr
  new_arr = []
  arr.each_with_index do |item, index|
     new_arr.push (yield(arr[index]))
   end
end
