aluno = Aluno.new 'Diego', 23.5, 9.9
puts aluno.nota # => 9.9

class Aluno
	def nota
		@nota/2
	end
end

puts aluno.nota # => 4.95