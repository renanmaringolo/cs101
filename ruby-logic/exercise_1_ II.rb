def da_boas_vindas
    puts "Bem-vindo ao jogo da forca"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts "Começaremos o jogo para você #{nome}"
    nome
end

def escolhe_palavra_secreta
    puts "Escolhendo palavra secreta..."
    palavra_secreta = "ruby"
    puts "Palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}"
    chute
end

def joga(nome)
    palavra_secreta = sorteia_palavra_secreta

    erros = 0
    chutes = []
    pontos_ate_agora = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        chutes << chute  
    end    
    puts "Você ganhou #{pontos_ate_agora} pontos."
end