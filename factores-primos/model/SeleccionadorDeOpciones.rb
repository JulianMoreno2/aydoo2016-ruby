require_relative '../model/Factorizador'
require_relative '../model/Ordenador'
require_relative '../model/Parametrizador'
require_relative '../model/Formateador'
require_relative '../model/ImprimidorEnConsola'
require_relative '../model/ImprimidorEnArchivo'

class SeleccionadorDeOpciones

	def initialize
		@factorizador = Factorizador.new
		@ordenador = Ordenador.new
		@parametrizador = Parametrizador.new
		@formateador = Formateador.new
	end

	def ejecutar(parametros)
		@parametros_alineados = @parametrizador.alinear_parametros(parametros)		
		@factores = @factorizador.factorizar(parametros[0].to_i)

		@factores_formateados = @formateador.formatear(@factores, @parametros_alineados[1])
		@factores_ordenados = @ordenador.ordenar(@factores_formateados,@parametros_alineados[2])
		
		seleccionar_salida
	end

	def seleccionar_salida
		salida = @parametros_alineados[3]
		
		if salida == ""
			imprimidor = ImprimidorEnConsola.new
		else
			imprimidor = ImprimidorEnArchivo.new
			imprimidor.setSalida(salida)
		end

		imprimidor.imprimir(@factores_ordenados)
	end
end