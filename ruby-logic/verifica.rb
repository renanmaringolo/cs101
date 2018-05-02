def verifica_se_acertou(chute, numero_secreto)
    acertou = numero_secreto == chute.to_i
    if acertou
        puts "Você ACERTOU!!!"
        return true
    end
    maior = numero_secreto > chute.to_i
    if maior
        puts "O número secreto é maior..."
    else
        puts "O número secreto é menor..."
    end     
    false           
end  