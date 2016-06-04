require 'rspec' 
require_relative '../model/Factorizador'

describe 'Factorizador' do

  it 'deberia retornar 2 cuando factorizar(2)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(2)).to eq 2
  end

end