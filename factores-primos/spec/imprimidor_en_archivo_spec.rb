require 'rspec' 
require_relative '../model/imprimidor_en_archivo'

describe 'ImprimidorEnArchivo' do

	it 'deberia crear salida y poner Factores primos de 2: en el archivo' do
		file = mock('salida')
    File.should_receive(:open).with("salida", "w").and_yield(file)
    file.should_receive(:write).with("Factores primos 2: ")
    
    imprimidorEnArchivo = ImprimidorEnArchivo.new
    imprimidorEnArchivo.setSalida("salida")
    imprimidorEnArchivo.imprimir(["2"])
  end

  it 'deberia crear salida y poner Factores primos de 4: 2 2 en el archivo' do
		file = mock('salida')
    File.should_receive(:open).with("salida", "w").and_yield(file)
    file.should_receive(:write).with("Factores primos 4: ")
    file.should_receive(:write).with("2 ")
    file.should_receive(:write).with("2 ")
    
    imprimidorEnArchivo = ImprimidorEnArchivo.new
    imprimidorEnArchivo.setSalida("salida")
    imprimidorEnArchivo.imprimir(["4", "2 ", "2 "])
  end

  it 'deberia crear salida y poner Factores primos de 4: 2\n2\n en el archivo' do
		file = mock('salida')
    File.should_receive(:open).with("salida", "w").and_yield(file)
    file.should_receive(:write).with("Factores primos 4: ")
    file.should_receive(:write).with("2\n")
    file.should_receive(:write).with("2\n")
    
    imprimidorEnArchivo = ImprimidorEnArchivo.new
    imprimidorEnArchivo.setSalida("salida")
    imprimidorEnArchivo.imprimir(["4", "2\n", "2\n"])
  end
end