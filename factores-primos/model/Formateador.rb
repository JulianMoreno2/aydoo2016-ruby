class Formateador
	def formatear(factores, formato)

		factores[0] = factores[0].to_s

		if formato == "" || formato == "pretty"
			for i in 1...factores.length
				factores[i] = factores[i].to_s + " "
			end
		elsif formato == "quiet"
			for i in 1...factores.length
				factores[i] = factores[i].to_s + "\n"
			end			
		end
		return factores
	end
end