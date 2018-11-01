puts "Bem-vindo ao jogo da adivinhação"
puts "Qual seu nome?"
nome = gets
puts "\n\n\n\n\n"
puts "Começaremos o jogo para você " + nome
puts "Escolhendo um número secreto..."
numero_secreto = 120
puts "Escolhido, que tal adivinhar nosso número secreto hoje?"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    chute = gets
    puts "Será que você acertou? Você chutou " + chute.to_s

    acertou = numero_secreto == chute.to_i
    if acertou
        puts "Você acertou!"
        break
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior"
        else
            puts "O número secreto é menor"  
        end         
    end    
end        