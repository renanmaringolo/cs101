def pede_um_numero(tentativa, limite_de_tentativas)
	puts "Tentativa " + tentativa.to_s + "de " + limite_de_tentativas.to_s
	puts "Entre com o número"
	chute = gets
	puts "Será que você acertou? Seu chute foi:  #{chute}"
	chute.to_i	
end