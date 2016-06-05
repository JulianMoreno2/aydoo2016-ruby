class ImprimidorEnConsola
	def imprimir(factores)
		salida = "Factores primos de #{factores[0]}: "
		for i in 1...factores.length
			print factores[1]
			salida = salida + factores[i]
		end
		return "#{salida}"
	end
end