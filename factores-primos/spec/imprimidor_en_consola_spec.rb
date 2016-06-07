require 'rspec' 
require_relative '../model/metadata/imprimidor_en_consola'

describe 'ImprimidorEnConsola' do
	
	it 'deberia retornar "2" cuando imprimir([2])' do
    imprimidor_en_consola = ImprimidorEnConsola.new
    expect(imprimidor_en_consola.imprimir(["2"])).to eq "Factores primos 2: "
  end

  it 'deberia retornar "2 2" cuando imprimir([2 ,2 ])' do
    imprimidor_en_consola = ImprimidorEnConsola.new
    expect(imprimidor_en_consola.imprimir(["2","2 "])).to eq "Factores primos 2: 2 "
  end  

  it 'deberia retornar "2\n2\n" cuando imprimir([2\n,2\n])' do
    imprimidor_en_consola = ImprimidorEnConsola.new
    expect(imprimidor_en_consola.imprimir(["2","2\n"])).to eq "Factores primos 2: 2\n"
  end 
end