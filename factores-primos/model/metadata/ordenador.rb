require_relative '../comandos/comando_des'
require_relative '../comandos/comando_asc'

class Ordenador

	def initialize
		@hash_map = {"asc" => ComandoAsc.new,"" => ComandoAsc.new, "des" => ComandoDes.new}
		@factores_ordenados = []
	end

	def ordenar(factores,orden)

		@hash_map[orden].ejecutar_accion(@factores_ordenados,factores)

		# @factores_ordenados = [factores[0]]
		# factores_auxiliar = []
		# 	for i in 1...factores.length
		# 		factores_auxiliar[i-1] = factores[i]
		# 	end

		# if orden == "des"
		# 	factores_auxiliar.reverse!
		#  	for l in 0...factores_auxiliar.length
		#  		@factores_ordenados[l+1] = factores_auxiliar[l]
		#  	end
		#  	return @factores_ordenados
		#  elsif orden == "asc" || orden == ""
		#  	return factores				
		#  end

		return @factores_ordenados
	end
end