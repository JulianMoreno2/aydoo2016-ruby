class ImprimidorEnArchivo
	
	def imprimir(factores)		
		print 
		File.open "#{@archivo}", "w" do |file|
			file.write("Factores primos de #{factores[0]}: ")
			for i in 1...factores.length
				file.write("#{factores[i]}")
			end
    	end
  	end

  	def setSalida(archivo)
  		@archivo = archivo
  	end
end