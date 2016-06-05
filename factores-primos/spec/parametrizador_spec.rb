require 'rspec' 
require_relative '../model/Parametrizador'

describe 'Parametrizador' do

	it 'deberia retornar ["20","","",""] cuando alinearParametros("20")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20"])).to eq ["20","","",""]
  end

  it 'deberia retornar ["20","quiet","",""] cuando alinearParametros("20","--format=quiet")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=quiet"])).to eq ["20","quiet","",""]
  end

  it 'deberia retornar ["20","pretty","",""] cuando alinearParametros("20","--format=pretty")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=pretty"])).to eq ["20","pretty","",""]
  end

  it 'deberia retornar ["20","pretty","asc",""] cuando alinearParametros("20","--format=pretty","--sort:asc")' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20","--format=pretty","--sort:asc"])).to eq ["20","pretty","asc",""]
  end

end