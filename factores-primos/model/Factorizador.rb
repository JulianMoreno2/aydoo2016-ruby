class Factorizador
	def factorizar(numero)
		factor = 2
		factorizacion = []

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