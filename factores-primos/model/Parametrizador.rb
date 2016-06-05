class Parametrizador

	def alinear_parametros(parametros)

		parametros_alineados = [parametros[0],"","",""]

		for opcion in 1...parametros.length do
			
			opcionConIgual = parametros[opcion].split("=")
			opcionConPuntos = parametros[opcion].split(":")

			if opcionConIgual.length > 1
				
				if opcionConIgual[0] == "--format"
					parametros_alineados[1] = opcionConIgual[1]
				elsif opcionConIgual[0] == "--output-file"
					parametros_alineados[3] = opcionConIgual[1]
				end	

			elsif opcionConPuntos.length > 1
				parametros_alineados[2] = opcionConPuntos[1]
			end				
		end

		return parametros_alineados
	end
end