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

  while val = yield(next_i, source.shift)
    next_i = source.shift
  end
  val

end
