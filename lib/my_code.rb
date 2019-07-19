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
    a, b, i = init, source[0], 1
  else
    a, b, i = source[0],source[1], 2
  end

  val = yield(a, b)
  while i < source.size
    val = yield(val,source[i])
    i += 1
  end

  return val
end
