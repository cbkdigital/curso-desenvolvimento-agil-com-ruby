range = 1..10

range.member? 5 # => true
range === 5 # => true

range.partition do |item|
	item < 5
end # => [[1, 2, 3, 4], [5, 6, 7, 8, 9, 10]]