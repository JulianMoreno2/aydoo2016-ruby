require_relative '../model/Factorizador'

array_entrada = ARGV

factorizador = Factorizador.new
puts "#{factorizador.factorizar(array_entrada[0].to_i)}"