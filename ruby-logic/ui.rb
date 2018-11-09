def avisa_chute_efetuado(chute)
    puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
    puts "Letra não encontrada"
end

def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes."
end

def avisa_se_acertou
    puts "Parabéns, você acertou!"    
end

def avisa_se_errou
    puts "ERROUUUUUUUUU"
end

def avisa_pontos_ate_agora(pontos_ate_agora)
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

def escolhe_palavra_secreta
    puts "Escolhendo palavra secreta..."
    palavra_secreta = "programador"
    puts "A palavra secreta com #{palavra_secreta.size} letras"
    palavra_secreta
end    

def nao_quer_jogar?
    puts "Deseja jogar novamente?"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end   

def cabecalho_de_tentativa(chutes, erros)
    puts "\n\n\n\n"
    puts "Erros até agora #{erros}."
    puts "Chutes até agora #{chutes}."
end    

def pede_um_chute
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}."
    chute 
end    