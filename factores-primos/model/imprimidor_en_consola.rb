class ImprimidorEnConsola
	def imprimir(factores)		
		salida = "Factores primos #{factores[0]}: "
		for i in 1...factores.length
			salida = salida << factores[i].to_s
		end
		print salida + "\n"
		return "#{salida}"
	end
end