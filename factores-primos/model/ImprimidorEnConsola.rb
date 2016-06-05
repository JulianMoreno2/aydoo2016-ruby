class ImprimidorEnConsola
	def imprimir(factores)
		salida = ""
		for i in 0...factores.length
			print factores[1]
			salida = salida + factores[i]
		end
		return "#{salida}"
	end
end