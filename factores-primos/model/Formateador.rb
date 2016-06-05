class Formateador
	def formatear(factores)
		for i in 0...factores.length
			factores[i] = factores[i].to_s + " "
		end
		return factores
	end
end