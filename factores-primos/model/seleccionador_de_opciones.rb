require_relative '../model/factorizador'
require_relative '../model/ordenador'
require_relative '../model/parametrizador'
require_relative '../model/formateador'
require_relative '../model/imprimidor_en_consola'
require_relative '../model/imprimidor_en_archivo'

class SeleccionadorDeOpciones

	def initialize
		@factorizador = Factorizador.new
		@ordenador = Ordenador.new
		@parametrizador = Parametrizador.new
		@formateador = Formateador.new
	end

	def ejecutar(parametros)
		@factores = @factorizador.factorizar(parametros[0].to_i)
		@parametros_alineados = @parametrizador.alinear_parametros(parametros)		
		
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