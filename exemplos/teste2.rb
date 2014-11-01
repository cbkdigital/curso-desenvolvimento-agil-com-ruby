teste = 'Hello'
puts teste + ' World!' # => Hello World!

teste += ' World!'
teste << ' World!'
puts teste # => Hello World! World!

teste.gsub!(' World!', '')
puts teste # => Hello

puts "#{teste} World!" # => Hello World!