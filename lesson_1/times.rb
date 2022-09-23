def times(num)
  count = 0
  while count < num
    yield(count)
    count += 1
  end

  num
end

times(5) { |num| puts num }