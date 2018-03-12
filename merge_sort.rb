# there are less expensive ways to get the same outcome as in this method.
#This implementation is meant to practice
#merge_sort

# Method that returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]


def descending_digits(int)
  if int.is_a?(Integer)
    #
    tos = int.to_s.split('')
    tos.map! {|e| e.to_i }
  else
    tos = int
  end
  #
  if tos.length == 1
    #
    tos.map { |e| e.to_s }
    #
  else
    #
    midpoint = tos.length / 2.floor
    left = descending_digits(tos.take(midpoint))
    right = descending_digits(tos.drop(midpoint))
    merge_descending(left, right)
    #
  end
end

def merge_descending(left, right)
  #
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [right.first] + merge_descending(left, right[1..right.length])
  else
    [left.first] + merge_descending(left[1..left.length], right)
  end
  # x
end
