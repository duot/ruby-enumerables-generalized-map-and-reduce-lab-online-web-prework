# Your Code Here
def map arr
  new_arr = []
  arr.each_with_index do |item, index|
     new_arr.push yield(arr[index])
   end
  new_arr
end

def reduce (source, init = nil)
  val = nil
  next_i = init if init end

  val = yield(next_i, source.shift
  while next_i = source.shift
    val = yield(val, next_i)
  end
end
