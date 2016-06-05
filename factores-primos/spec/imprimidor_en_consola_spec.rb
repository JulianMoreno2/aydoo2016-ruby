require 'rspec' 
require_relative '../model/ImprimidorEnConsola'

describe 'ImprimidorEnConsola' do
	
	it 'deberia retornar "2" cuando imprimir([2])' do
    imprimidor_en_consola = ImprimidorEnConsola.new
    expect(imprimidor_en_consola.imprimir(["2"])).to eq "2"
  end 

  it 'deberia retornar "2 2" cuando imprimir([2 ,2 ])' do
    imprimidor_en_consola = ImprimidorEnConsola.new
    expect(imprimidor_en_consola.imprimir(["2 ","2 "])).to eq "2 2 "
  end  
end