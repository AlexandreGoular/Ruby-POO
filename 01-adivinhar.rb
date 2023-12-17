class AdivinharNumero

  attr_reader :numero, :venceu

  def initialize
    @numero = Random.rand(1..10)
    @venceu = false
  end

  def tentar_adivinhar(numero = 0)
    if numero == @numero
      @venceu = true
      return "Você VENCEU!!!"
    elsif numero > @numero
      return "O numero informado é maior..."
    else
      return "O numero informado é menor..."
    end
  end
end

jogo = AdivinharNumero.new

puts ("----------------------------")
puts (" ")
puts ("Adivinhe o numero")
puts ("----------------------------")
puts (" ")

until jogo.venceu do
  puts ("----------------------------")
  puts ("Digite um numero: ")
  numero = gets.chomp.to_i
  puts ("\n")
  puts jogo.tentar_adivinhar(numero)
end
