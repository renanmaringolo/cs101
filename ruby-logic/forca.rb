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
    puts "Palavra secreta escolhida"
    puts "\n\n\n"
    puts "Que tal tentar adivinhar a palavra secreta?"
    puts "A palavra secreta tem #{palavra_secreta.size} letras"
end    

def nao_quer_jogar?
    puts "Deseja jogar novamente?"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end   

def pede_um_chute(chutes, erros)
    puts "\n\n\n\n"
    puts "Erros até agora #{erros}."
    puts "Chutes até agora #{chutes}."
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}."
    chute
end    

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta

    erros = 0
    chutes = []
    pontos_ate_agora = 0


    while erros < 5
        chute = pede_um_chute chutes, erros
        chutes << chute


        #verifica 

    end     

    puts "Você ganhou #{pontos_ate_agora} pontos."

end    

nome = da_boas_vindas

loop do
    joga nome
    if nao_quer_jogar?
        break
    end     
end

