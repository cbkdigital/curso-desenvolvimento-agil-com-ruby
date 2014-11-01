module DizOi
	def oi
		puts 'Oi!!'
	end
end

class Pessoa
	include DizOi
	attr_accessor :nome, :idade

	def initialize(nome, idade)
		@nome, @idade = nome, idade
	end
end

pessoa = Pessoa.new 'Diego', 23.5

puts pessoa.oi