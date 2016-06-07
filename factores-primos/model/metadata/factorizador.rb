require_relative '../excepciones/numero_invalido_exception'

class Factorizador
	def factorizar(numero)

		if numero < 1
			raise NumeroInvalidoException, "El numero ingresado debe ser mayor a 0"
		end 

		factor = 2
		factorizacion = [numero]
		if numero < 2
			factorizacion << numero
		else
			while numero >= 2 do
				if numero%factor == 0
					factorizacion << factor
					numero = numero/factor
				else
					factor += 1
				end
			end
		end

		return factorizacion
	end
end