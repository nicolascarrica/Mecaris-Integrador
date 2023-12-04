require_relative 'main'

class Inicio
  def self.iniciar_programa
    puts "¡Bienvenido al programa de administración de películas!"
    Main.administrar_programa
  end
end

Inicio.iniciar_programa