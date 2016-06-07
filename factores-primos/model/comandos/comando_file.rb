class ComandoFile
	def ejecutar_accion(array, parametro)
		array[3] = parametro.split("=")[1]
	end
end