class ComandoFormat
	def ejecutar_accion(array, parametro)
		array[1] = parametro.split("=")[1]
	end
end