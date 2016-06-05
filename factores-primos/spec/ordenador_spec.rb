require 'rspec' 
require_relative '../model/Ordenador'

describe 'Ordenador' do

	it 'deberia retornar ["2"] cuando ordenar(["2"])' do
    formateador = Ordenador.new
    expect(formateador.ordenar(["2"])).to eq ["2"]
  end  
end