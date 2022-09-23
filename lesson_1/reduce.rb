def reduce(arr, acc=false)
  if acc
    count = 0
  else
    acc = arr[0]
    count = 1
  end
  while count < arr.size
    acc = yield(acc, arr[count])
    count += 1
  end

  p acc
end

array = [1, 2, 3, 4, 5]

reduce(array) { |acc, num| acc + num }                    # => 15
reduce(array, 10) { |acc, num| acc + num }                # => 25
reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass