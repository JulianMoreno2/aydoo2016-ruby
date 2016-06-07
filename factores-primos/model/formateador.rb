class Formateador
	def formatear(factores, formato)

		factores_formateados = [""]

		factores_formateados[0] = "#{factores[0]}"

		if formato == "" || formato == "pretty"
			for i in 1...factores.length
				factores_formateados << "#{factores[i]} "
			end
		elsif formato == "quiet"
			for i in 1...factores.length
				factores_formateados << "#{factores[i]}\n"
			end			
		end
		return factores_formateados
	end
end