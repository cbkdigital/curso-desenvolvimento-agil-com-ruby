host = :'0.0.0.0'
puts host # => 0.0.0.0

puts :host.object_id # => 321128
puts :host.object_id # => 321128

puts 'host'.object_id # => 8957300
puts 'host'.object_id # => 8957220