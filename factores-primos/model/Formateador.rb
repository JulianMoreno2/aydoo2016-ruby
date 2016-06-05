class Formateador
	def formatear(factores, formato)

		if formato == "" || formato == "pretty"
			for i in 0...factores.length
				factores[i] = factores[i].to_s + " "
			end
		elsif formato == "quiet"
			for i in 0...factores.length
				factores[i] = factores[i].to_s + "\n"
			end			
		end
		return factores
	end
end