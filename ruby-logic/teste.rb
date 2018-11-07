for dedos in 1..3
  puts "contando"
end   

chutes = []

chute = 176
chutes << chute

chute = 180
chutes << chute

chute = 140
chutes << chute

puts chutes

nome = gets.strip
puts nome + " tem " + nome.size.to_s + " caracteres"
puts "Resultado: "
puts nome[9]


chutes = []
chutes << 50
chutes << 150
chutes << 300

for chute in chutes
	puts chute
end
nome = gets.strip
puts nome.size


class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

john = Person.new("John Doe")
john.name