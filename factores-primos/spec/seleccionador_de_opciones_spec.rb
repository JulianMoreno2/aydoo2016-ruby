require 'rspec' 
require_relative '../model/SeleccionadorDeOpciones'

describe 'SeleccionadorDeOpciones' do

	it 'deberia retornar "Factores primos de 2: 2 2 " cuando ejecutar(["2"])' do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["4"])).to eq "Factores primos de 4: 2 2 "
  end  

end