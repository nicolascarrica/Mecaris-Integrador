require_relative 'socio'
require_relative 'soporte'
require_relative 'pelicula'
require_relative 'registro'

class Main
    def self.administrar_programa
        fecha_actual = Time.now.strftime("%Y-%m-%d %H:%M:%S")
        puts "Ingrese nombre de socio:"
        nombre_socio = gets.chomp
        socio1 = Socio.new(nombre_socio)

        puts "Es VIP? (true/False):"
        vip = gets.chomp
        vip = vip == "true"
        socio1.hacer_vip if vip

        puts "Ingrese nombre de la Pelicula:"
        nombre_pelicula = gets.chomp

        puts "Ingrese tipo de soporte (CD/DVD/Blu-Ray/VHS):"
        tipo_soporte = gets.chomp

        puts "Ingrese precio:"
        precio_pelicula = gets.chomp
        descuento = vip ? "Aplica descuento 10% al precio por VIP" : "No aplica descuento"
        puts descuento

        pelicula1 = Pelicula.new(nombre_pelicula, tipo_soporte, precio_pelicula)
        precio = pelicula1.calcular_precio(socio1)
        Registro.guardar_movimiento(fecha_actual, socio1.nombre, vip, pelicula1.nombre, pelicula1.tipo, precio)

        puts "Pelicula alquilada con exito"

    end
end