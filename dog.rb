class Cachorro

  def latir(latido = "Au Au Au")

    return latido

  end

  def chorar(choro = "Nhaaaa")

    return choro

  end
end

def decisao

  puts "[1] - Choro"
  puts "[2] - Latido"
  puts " "

end

pet = Cachorro.new

puts "Deseja adicionar um grito ou choro especial?"
escolha = gets.chomp.to_s

if escolha === "nao"

  puts ("Choro normal do pet #{pet.chorar}")
  puts ("Latido normal do pet #{pet.latir}")

end

case escolha
when "sim"
  puts "_____________________________"
  puts " "

  decisao()

  puts "O que deseja adicionar?"
  adicionar = gets.chomp.to_i
  puts (" ")


  case adicionar

  when 1

    puts "Digite seu choro personalizado:"
    choroPersonalizado = gets.chomp.to_s

    puts (" ")
    puts ("Latido do pet normal #{pet.latir}")
    puts ("Choro do pet personalizado #{pet.chorar(choroPersonalizado)}")

  when 2

    puts "Digite seu latido personalizado:"
    latidoPersonalizado = gets.chomp.to_s

    puts (" ")
    puts ("Choro do pet normal #{pet.chorar}")
    puts ("Latido do pet personalizado #{pet.latir(latidoPersonalizado)}")

  end

end
