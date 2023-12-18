class Calculadora

  def somar(n1,n2)
    ("A soma de #{n1} + #{n2} = #{n1 + n2}")
  end

  def divisao(n1,n2)
    ("A divisao de #{n1} / #{n2} = #{n1 / n2}")
  end

  def multiplicacao(n1, n2)
    ("A multiplicacao de #{n1} * #{n2} = #{n1 * n2}")
  end

  def subtracao(n1, n2)
    ("A subtracao de #{n1} - #{n2} = #{n1 - n2}")
  end

end

class Operacao < Calculadora

  attr_accessor :n1 , :n2

  def tipos
    puts ("[1] - Adicao")
    puts ("[2] - Subtracao")
    puts ("[3] - Multiplicacao")
    puts ("[4] - Divisao")
    puts ("[5] - Encerrar Programa")
  end

end

calculando = Calculadora.new
operacaoDesejada = Operacao.new

puts ("-----------------------------")
puts (" ")
puts ("Calculadora (: ")
puts (" ")
puts ("-----------------------------")
puts (" ")

puts operacaoDesejada.tipos

puts ("Qual operacao deseja ?")
usuarioOperacao = gets.chomp.to_i

while (usuarioOperacao != 5)

  case usuarioOperacao
  when 1
    puts (" ")
    puts ("--------------------")
    puts ("Soma")
    puts (" ")
    puts ("--------------------")
    puts ("Digite o primeiro numero:")
    operacaoDesejada.n1 = gets.chomp.to_f
    puts (" ")
    puts ("Digite o segundo numero:")
    operacaoDesejada.n2 = gets.chomp.to_f
    puts (" ")
    puts calculando.somar(operacaoDesejada.n1, operacaoDesejada.n2)
  when 2
    puts (" ")
    puts ("--------------------")
    puts ("Subtracao")
    puts (" ")
    puts ("--------------------")
    puts ("Digite o primeiro numero:")
    operacaoDesejada.n1 = gets.chomp.to_f
    puts (" ")
    puts ("Digite o segundo numero:")
    operacaoDesejada.n2 = gets.chomp.to_f
    puts (" ")
    puts calculando.subtracao(operacaoDesejada.n1, operacaoDesejada.n2)
  when 3
    puts (" ")
    puts ("--------------------")
    puts ("Multiplicacao")
    puts (" ")
    puts ("--------------------")
    puts ("Digite o primeiro numero:")
    operacaoDesejada.n1 = gets.chomp.to_f
    puts (" ")
    puts ("Digite o segundo numero:")
    operacaoDesejada.n2 = gets.chomp.to_f
    puts (" ")
    puts calculando.multiplicacao(operacaoDesejada.n1, operacaoDesejada.n2)
  when 4
    puts (" ")
    puts ("--------------------")
    puts ("Divisao")
    puts (" ")
    puts ("--------------------")
    puts ("Digite o primeiro numero:")
    operacaoDesejada.n1 = gets.chomp.to_f
    puts (" ")
    puts ("Digite o segundo numero:")
    operacaoDesejada.n2 = gets.chomp.to_f
    puts (" ")
    puts calculando.divisao(operacaoDesejada.n1, operacaoDesejada.n2)
  when 5
    break
  end
  puts operacaoDesejada.tipos

  puts ("Qual operacao deseja ?")
  usuarioOperacao = gets.chomp.to_i
end

puts (" ")
puts ("Obrigado por testar a calculadora (: ")
