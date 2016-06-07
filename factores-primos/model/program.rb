require_relative '../model/metadata/seleccionador_de_opciones'

array = ARGV

selector = SeleccionadorDeOpciones.new
selector.ejecutar(array)