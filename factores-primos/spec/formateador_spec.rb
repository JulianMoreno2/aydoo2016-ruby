require 'rspec' 
require_relative '../model/Formateador'

describe 'Formateador' do

	it 'deberia retornar ["2 "] cuando formatear([2])' do
    formateador = Formateador.new
    expect(formateador.formatear([2])).to eq ["2 "]
  end  

  it 'deberia retornar ["2 ","2 "] cuando factorizar([2,2])' do
    formateador = Formateador.new
    expect(formateador.formatear([2,2])).to eq ["2 ","2 "]
  end
end