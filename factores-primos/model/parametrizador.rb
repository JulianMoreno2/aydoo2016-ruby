class Parametrizador

	def alinear_parametros(parametros)

		parametros_alineados = [parametros[0],"","",""]

		for opcion in 1...parametros.length do

			indicio_parametro = parametros[opcion][0...3]

			if indicio_parametro == "--f"
				parametros_alineados[1] = parametros[opcion].split("=")[1]
			elsif indicio_parametro == "--s"
				parametros_alineados[2] = parametros[opcion].split(":")[1]
			elsif indicio_parametro == "--o"
				parametros_alineados[3] = parametros[opcion].split("=")[1]			
			end

		end

		return parametros_alineados
	end
end