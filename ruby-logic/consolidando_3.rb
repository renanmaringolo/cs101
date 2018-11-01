def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhação"
    puts "Qual seu nome?"
    nome = gets
    puts "\n\n\n\n\n"
    puts "Começaremos o jogo para você " + nome
end   

def sorteia_numero_secreto
    puts "Escolhendo um número secreto..."
    sorteado = 175
    puts "Escolhido, que tal adivinhar nosso número secreto hoje?"
    sorteado
end    

def pede_um_numero(tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    chute = gets
    puts "Será que você acertou? Você chutou " + chute.to_s
    chute.to_i
end    

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Você acertou!"
        return true
    end    
    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior"
    else
        puts "O número secreto é menor"  
            
    end
    false    
end   

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero tentativa, limite_de_tentativas
    if verifica_se_acertou numero_secreto, chute 
        break
    end
end        