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
  if !init
    a, b = source.shift(2)
  else
    a, b = init, source.shift
  end
  val = yield(a, b)

  #recur
  if source
    reduce(source, val) yield
  else
    return val
  end
end
