class Personagem
  attr_accessor :nome, :idade, :cor_pele, :cor_cabelo, :cor_olho
  @@contador = 0

  def initialize(cor_olho = "Indefinido", cor_cabelo = "Indefinido", cor_pele = "Indefinido", nome = "Indefinido", idade = 0)
    @cor_olho = cor_olho
    @cor_cabelo = cor_cabelo
    @cor_pele = cor_pele
    @nome = nome
    @idade = idade

  end

  def mostrar_caracteristicas
    "Nome: #{@nome}, Idade: #{@idade}, Cor da Pele: #{@cor_pele}, Cor do Cabelo: #{@cor_cabelo}, Cor do Olho: #{@cor_olho}"
  end

end

def menu
  puts (" ")
  puts ("[1] - Colocar nome")
  puts ("[2] - Colocar idade")
  puts ("[3] - Mudar cor da pele")
  puts ("[4] - Mudar cor do cabelo")
  puts ("[5] - Mudar cor do olho")
  puts ("[6] - Finalizar")
  puts (" ")
end

puts ("-------------------------------------------")
puts (" ")
puts ("Programa crie seu personagem")
puts (" ")
puts ("-------------------------------------------")
puts ("Deseja adicionar algo? (sim/não)")
adicionar = gets.chomp.downcase

if adicionar == "sim"
  boneco = Personagem.new

  loop do
    menu()
    puts ("Qual alteração deseja fazer:")
    puts (">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
    alteracao = gets.chomp.to_i
    puts (" ")

    case alteracao
    when 1

      puts ("Digite o novo nome: ")
      nome_novo = gets.chomp.to_s
      boneco.nome = nome_novo

    when 2

      puts ("Digite a nova idade:")
      idade_nova = gets.chomp.to_i
      boneco.idade = idade_nova

    when 3

      puts ("Digite a cor da pele: ")
      cor_pele = gets.chomp.to_s
      boneco.cor_pele = cor_pele

    when 4

      puts ("Digite a cor do cabelo: ")
      cor_cabelo = gets.chomp.to_s
      boneco.cor_cabelo = cor_cabelo

    when 5

      puts ("Digite a cor do olho: ")
      cor_olho = gets.chomp.to_s
      boneco.cor_olho = cor_olho

    when 6
      puts (" ")
      puts boneco.mostrar_caracteristicas # Mostra as características
      break
    else
      puts "Opção inválida"
    end
  end
end
