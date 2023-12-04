require_relative 'soporte'
require_relative 'alquilable'

class Pelicula < Soporte
  include Alquilable

  attr_accessor :nombre, :precio

  def initialize(tipo, nombre, precio)
    super(tipo)
    @nombre = nombre
    @precio = precio.to_f
  end
end