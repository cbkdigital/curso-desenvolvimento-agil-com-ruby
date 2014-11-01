def teste
	yield 'teste'
end

def outro
	yield 'outro'
end

proc = Proc.new do |nome_met| 
puts "no bloco #{nome_met}"
end

teste &proc
outro &proc