def teste(procedure)
	retorno = procedure.call
	puts "Voltou para o método -> #{retorno}"
end

lam = lambda { return 5 }
proc = Proc.new { return 5 }

teste lam
teste proc