class ComandoQuiet
	def ejecutar_accion(factores_formateados, factores)
		for i in 1...factores.length
			factores_formateados << "#{factores[i]}\n"
		end
	end
end