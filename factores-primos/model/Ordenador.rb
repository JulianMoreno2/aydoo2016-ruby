class Ordenador
	def ordenar(factores,orden)
		if orden == "des"
			return factores.reverse
		elsif orden == "asc" || orden == ""
			return factores				
		end
	end
end