class Aluno < Pessoa
	attr_accessor :nota

	def initialize(nome, idade, nota)
		super nome, idade
		@nome = nome
	end
end

aluno = Aluno.new 'Diego', 23.5, 9.9
puts aluno.nota