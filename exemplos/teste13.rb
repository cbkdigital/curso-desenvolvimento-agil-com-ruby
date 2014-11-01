def teste(procedure)
	procedure.call('teste')
end

def outro(procedure)
	procedure.call('outro')
end

proc = Proc.new { |nome_met| puts "no bloco #{nome_met}" }

teste proc
outro proc