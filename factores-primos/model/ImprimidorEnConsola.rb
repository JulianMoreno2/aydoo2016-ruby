class ImprimidorEnConsola
	def imprimir(factores)		
		salida = "Factores primos de #{factores[0]}: "
		for i in 1...factores.length
			print "#{factores[i]}"
			salida = salida << factores[i].to_s
		end
		return "#{salida}"
	end
end