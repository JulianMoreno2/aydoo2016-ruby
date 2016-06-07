require_relative '../comandos/comando_format'
require_relative '../comandos/comando_sort'
require_relative '../comandos/comando_file'

class Parametrizador
	
	def initialize
		@hash_map = {"--f" => ComandoFormat.new, "--s" => ComandoSort.new, "--o" => ComandoFile.new}
		@parametros_alineados = []
	end

	def alinear_parametros(parametros)

		@parametros_alineados = [parametros[0],"","",""]

		for opcion in 1...parametros.length do

			indicio_parametro = parametros[opcion][0...3]

			@hash_map[indicio_parametro].ejecutar_accion(@parametros_alineados, parametros[opcion])

		end
		
		return @parametros_alineados
	end
end