limite_de_tentativas = 3

for tentativas in 1..limite_de_tentativas
    puts "\n\n\n\n\n"
    puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o seu chute "
    chute = gets
    puts "Será que você acertou? Você chutou " + chute.to_s
    
    if numero_da_sorte == chute.to_i
        puts "Você ACERTOU!!!"
        break
    else   
        maior = numero_da_sorte > chute.to_i
        if maior
            puts "O número da sorte é maior..."
        else
            puts "O número da sorte é menor..."
        end        
    end        

end    