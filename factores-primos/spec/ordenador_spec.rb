require 'rspec' 
require_relative '../model/Ordenador'

describe 'Ordenador' do

	it 'deberia retornar ["2"] cuando ordenar(["2"],"")' do
    formateador = Ordenador.new
    expect(formateador.ordenar(["2"],"")).to eq ["2"]
  end

  it 'deberia retornar ["2","3"] cuando ordenar(["2","3"],"")' do
    formateador = Ordenador.new
    expect(formateador.ordenar(["2","3"],"")).to eq ["2","3"]
  end 

  it 'deberia retornar ["2","3"] cuando ordenar(["2","3"],"asc")' do
    formateador = Ordenador.new
    expect(formateador.ordenar(["2","3"],"asc")).to eq ["2","3"]
  end
end