require 'rspec' 
require_relative '../model/metadata/formateador'

describe 'Formateador' do

	it 'deberia retornar ["2"] cuando formatear([2],"")' do
    formateador = Formateador.new
    expect(formateador.formatear([2],"")).to eq ["2"]
  end  

  it 'deberia retornar ["2","2 "] cuando factorizar([2,2],"")' do
    formateador = Formateador.new
    expect(formateador.formatear([2,2],"")).to eq ["2","2 "]
  end

  it 'deberia retornar ["4","2 ","2 "] cuando factorizar([2,2,2],"")' do
    formateador = Formateador.new
    expect(formateador.formatear([4,2,2],"")).to eq ["4","2 ","2 "]
  end

  it 'deberia retornar ["2","2 ","2 "] cuando factorizar([2,2,2],"pretty")' do
    formateador = Formateador.new
    expect(formateador.formatear([4,2,2],"pretty")).to eq ["4","2 ","2 "]
  end

  it 'deberia retornar ["2","2\n","2\n"] cuando factorizar([2,2,2],"quiet")' do
    formateador = Formateador.new
    expect(formateador.formatear([4,2,2],"quiet")).to eq ["4","2\n","2\n"]
  end
end