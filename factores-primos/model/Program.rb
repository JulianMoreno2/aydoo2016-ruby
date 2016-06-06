require_relative '../model/SeleccionadorDeOpciones'

array = ARGV

selector = SeleccionadorDeOpciones.new
selector.ejecutar(array)