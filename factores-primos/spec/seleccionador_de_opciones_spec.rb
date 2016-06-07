require 'rspec' 
require_relative '../model/metadata/seleccionador_de_opciones'

describe 'SeleccionadorDeOpciones' do

	it 'deberia retornar "Factores primos 4: 2 2 " cuando ejecutar(["4"])' do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["4"])).to eq "Factores primos 4: 2 2 "
  end  

  it 'deberia retornar "Factores primos 4: 2 2 " cuando ejecutar(["4","--format=pretty"])' do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["4","--fotmat=pretty"])).to eq "Factores primos 4: 2 2 "
  end

  it "deberia retornar 'Factores primos 4: 2\n2\n' cuando ejecutar(['4','--format=quiet'])" do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["4","--format=quiet"])).to eq "Factores primos 4: 2\n2\n"
  end

  it "deberia retornar 'Factores primos 8: 2\n2\n2\n' cuando ejecutar(['8','--format=quiet'])" do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["8","--format=quiet"])).to eq "Factores primos 8: 2\n2\n2\n"
  end

  it "deberia retornar 'Factores primos 6: 2\n3\n' cuando ejecutar(['6','--format=quiet','--sort:asc'])" do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["6","--format=quiet","--sort:asc"])).to eq "Factores primos 6: 2\n3\n"
  end

  it "deberia retornar 'Factores primos 6: 3\n2\n' cuando ejecutar(['6','--format=quiet','--sort:des'])" do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["6","--format=quiet","--sort:des"])).to eq "Factores primos 6: 3\n2\n"
  end

  it "deberia retornar 'Factores primos 6: 3\n2\n' cuando ejecutar(['6','--format=quiet','--sort:des'])" do
    seleccionador = SeleccionadorDeOpciones.new
    expect(seleccionador.ejecutar(["6","--format=quiet","--sort:des"])).to eq "Factores primos 6: 3\n2\n"
  end
end