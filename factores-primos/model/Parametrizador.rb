class Parametrizador

	def alinear_parametros(parametros)

		if parametros.length > 1
			opcion = parametros[1].split("=")
			parametros[1] = opcion[1]
		end
		return parametros
	end

end