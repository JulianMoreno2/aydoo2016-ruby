require_relative '../comandos/comando_pretty'
require_relative '../comandos/comando_quiet'

class Formateador

	def initialize
		@hash_map = {"pretty" => ComandoPretty.new,"" => ComandoPretty.new, "quiet" => ComandoQuiet.new}
		@factores_formateados = [""]
	end

	def formatear(factores, formato)

		@factores_formateados[0] = "#{factores[0]}"

		@hash_map[formato].ejecutar_accion(@factores_formateados,factores)
		
		return @factores_formateados
	end
end