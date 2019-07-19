# Your Code Here
def map arr
  new_arr = []
  arr.each_with_index do |item, index|
     new_arr.push yield(arr[index])
   end
  new_arr
end

def reduce (source, init = nil)
  if init
    next_i = init
  else
    next_i = source.shift
  end
  val = yield(next_i, source.shift)
  next_i = source.shift
  while next_i
    val = yield(val, next_i)
    next_i = source.shift
  end
  val

end
