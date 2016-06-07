require_relative '../model/seleccionador_de_opciones'

array = ARGV

selector = SeleccionadorDeOpciones.new
selector.ejecutar(array)