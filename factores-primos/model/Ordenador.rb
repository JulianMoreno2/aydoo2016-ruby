class Ordenador
	def ordenar(factores,orden)

		if orden == "des"
			factores.reverse!
		end
		return factores
	end
end