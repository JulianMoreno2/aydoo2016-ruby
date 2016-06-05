require 'rspec' 
require_relative '../model/Factorizador'

describe 'Factorizador' do

	it 'deberia retornar 1 cuando factorizar(1)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(1)).to eq [1]
  end

  it 'deberia retornar 2 cuando factorizar(2)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(2)).to eq [2]
  end

  it 'deberia retornar 3 cuando factorizar(3)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(3)).to eq [3]
  end

  it 'deberia retornar [2,2] cuando factorizar(4)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(4)).to eq [2,2]
  end

  it 'deberia retornar [2,3] cuando factorizar(6)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(6)).to eq [2,3]
  end

  it 'deberia retornar [3,3] cuando factorizar(9)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(9)).to eq [3,3]
  end

  it 'deberia retornar [2,2,2] cuando factorizar(8)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(8)).to eq [2,2,2]
  end

  it 'deberia retornar [2,2,5] cuando factorizar(20)' do
    factorizador = Factorizador.new
    expect(factorizador.factorizar(20)).to eq [2,2,5]
  end
end