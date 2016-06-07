class ComandoDes
	def ejecutar_accion(factores_ordenados, factores)

		factores_ordenados[0] = factores[0]

		factores_auxiliar = [""]
		for i in 1...factores.length
			factores_auxiliar[i-1] = factores[i]
		end
		
		factores_auxiliar.reverse!
		for l in 0...factores_auxiliar.length
			factores_ordenados[l+1] = factores_auxiliar[l]
		end
		
		return factores_ordenados
	end
end