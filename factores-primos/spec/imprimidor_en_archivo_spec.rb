require 'rspec' 
require_relative '../model/ImprimidorEnArchivo'

describe 'ImprimidorEnArchivo' do

	it 'deberia crear 'salida' y poner Factores primos de 2: 2 en el archivo' do
		file = mock('salida')
    File.should_receive(:open).with("salida", "w").and_yield(file)
    file.should_receive(:write).with("Factores primos de 2: ")
    
    imprimidorEnArchivo = ImprimidorEnArchivo.new
    imprimidorEnArchivo.setSalida("salida")
    imprimidorEnArchivo.imprimir(["2"])
  end

end