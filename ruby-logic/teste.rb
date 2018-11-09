para cada uma das letras da palavra_secreta
  se a letra foi chutada
    imprime a letra 
  senao
    imprime "_"
  end
end


for letra in palavra_secreta.chars
  if chutes.inlcude? letra
    puts letra
  else
    puts "_"
  end
end      