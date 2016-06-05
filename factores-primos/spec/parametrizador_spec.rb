require 'rspec' 
require_relative '../model/Parametrizador'

describe 'Parametrizador' do

	it 'deberia retornar ["20"] cuando alinearParametros(parametros)' do
    parametrizador = Parametrizador.new
    expect(parametrizador.alinear_parametros(["20"])).to eq [20]
  end
end