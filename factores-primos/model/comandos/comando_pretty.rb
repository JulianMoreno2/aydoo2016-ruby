class ComandoPretty
	def ejecutar_accion(factores_formateados, factores)
		for i in 1...factores.length
			factores_formateados << "#{factores[i]} "
		end
	end
end