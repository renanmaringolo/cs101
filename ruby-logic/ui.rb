def avisa_chute_efetuado chute 
    puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
    puts "Letra não encontrada"
end

def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes."
end

def avisa_acertou_palavra
    puts "Parabéns, você acertou!"    
end

def avisa_errou_palavra
    puts "ERROUUUUUUUUU"
end

def avisa_pontos(pontos_ate_agora)
    puts "Você ganhou #{pontos_ate_agora} pontos."
end

def da_boas_vindas
    puts "Bem vindo ao jogo da Forca."
    puts "Digite seu nome: "
    nome = gets.strip
    puts "Começaremos o jogo para você #{nome}."
    puts "\n\n\n\n"
    nome
end    

def avisa_escolhendo_palavra
    puts "Escolhendo palavra secreta..."
end

def avisa_palavra_escolhida palavra_secreta
    puts "A palavra secreta com #{palavra_secreta.size} letras"
    palavra_secreta
end 

def nao_quer_jogar?
    puts "Deseja jogar novamente?"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end   

def cabecalho(chutes, erros, mascara)
    puts "\n\n\n\n"
    puts "Palavra secreta: #{mascara}."
    puts "Erros até agora: #{erros}."
    puts "Chutes até agora: #{chutes}."
end    

def pede_um_chute
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip.downcase
    puts "Será que acertou? Você chutou #{chute}."
    chute 
end    