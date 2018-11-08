def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhação"
    puts "Qual seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts "Começaremos o jogo para você #{nome}"
end   

def pede_dificuldade
    puts "Qual o nível de dificuldade que você deseja jogar? (1. fácil - 5. difícil)"
    dificuldade = gets.to_i
end    

def sorteia_numero_secreto(dificuldade)
    if dificuldade == 1
        maximo = 30
    else
        if dificuldade == 2
            maximo = 60
        else 
            if dificuldade == 3
                maximo = 100
            else
                if dificuldade == 4
                    maximo = 150
                else
                    maximo = 200
                end
            end
        end
    end                                    
    puts "Escolhendo um número secreto entre 0 e #{maximo - 1}..."
    sorteado = rand(maximo)
    puts "Escolhido, que tal adivinhar nosso número secreto hoje?"
    sorteado
end    

def pede_um_numero(chute, tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora #{chute} "
    puts "Entre com o número"
    chute = gets.strip
    puts "Será que você acertou? Você chutou #{chute} " 
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
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero chutes, tentativa, limite_de_tentativas
    chutes << chute
    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou numero_secreto, chute 
        break
    end
end        

puts "Você ganhou #{pontos_ate_agora} pontos."