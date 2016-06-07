class ComandoAsc
	def ejecutar_accion(factores_ordenados, factores)
		for i in 0...factores.length
			factores_ordenados[i] = factores[i]
		end
	end
end