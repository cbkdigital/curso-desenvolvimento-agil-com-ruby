proc = Proc.new { |param| puts param }
lam = lambda { |param| puts param }

puts proc.class
puts lam.class