for tentativa in 1..limite_de_tentativas
    chute = pede_numero chutes, tentativa, limite_de_tentativas
    chutes << chute

    if verifica_se_acertou chute, numero_secreto 
        break
    end 
end