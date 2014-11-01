module SingletonService
	@self ||= nil
	@constructor ||= nil

	def build
		@self = @constructor.call if @self.nil?
		@self
	end

	def to_construct(&block)
		@constructor = block
	end
end

class Pessoa
	extend SingletonService
	attr_accessor :nome

	to_construct do
		Pessoa.new
	end
end

class Conta
	extend SingletonService
	attr_reader :pessoa

	to_construct do
		pessoa = Pessoa.build
		Conta.new(pessoa)
	end

	def initialize(pessoa)
		@pessoa = pessoa
	end
end

pessoa = Pessoa.build
conta1 = Conta.build
conta2 = Conta.build

p pessoa
p conta1
p conta2