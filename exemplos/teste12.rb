def teste
	puts 'no método'
	yield 'teste'
	puts 'de volta no método'
end

teste { |nome_met| puts "no bloco #{nome_met}" }
# ou
teste do |nome_met|
	puts "no bloco #{nome_met}"
end