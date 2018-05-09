def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
end


def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado = rand(200)
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
end

def pede_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n\n\n"
    puts "Tentativa #{tentativa} #{limite_de_tentativas}"
    puts "Chute até agora " + chutes.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou #{chute}"
    chute.to_i
end    

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

da_boas_vindas
numero_secreto = sorteia_numero_secreto

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []


for tentativa in 1..limite_de_tentativas
    chute = pede_numero chutes, tentativa, limite_de_tentativas
    chutes << chute
    pontos_a_perder = (chute - numero_secreto).abs / 2
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou chute, numero_secreto 
        break
    end 
end
puts "Você ganhou #{pontos_ate_agora} pontos"