class Ordenador
	
	def ordenar(factores,orden)

		factores_ordenados = [factores[0]]
		factores_auxiliar = []
		for i in 1...factores.length
			factores_auxiliar[i-1] = factores[i]
		end

		if orden == "des"
			factores_auxiliar.reverse!
			for l in 0...factores_auxiliar.length
				factores_ordenados[l+1] = factores_auxiliar[l]
			end
			return factores_ordenados
		elsif orden == "asc" || orden == ""
			return factores				
		end
	end
end