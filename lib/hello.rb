def hello_t(array)
  if block_given?
  i = 0

  while i < array.length
    yield array[i]
    i = i + 1
  end
  array
end
else
puts "Hey! No block give!"


hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    "Hi, #{name}"
  end
end
