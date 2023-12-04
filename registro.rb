require 'csv'

class Registro
  def self.guardar_movimiento(fecha,socio, vip, nombre_pelicula, soporte_pelicula, precio)
    CSV.open('movimientos.csv', 'a') do |csv|
      csv << [fecha, socio, vip, nombre_pelicula, soporte_pelicula, precio]
    end
  end
end