class Socio
    attr_accessor :nombre, :vip
  
    def initialize(nombre)
      @nombre = nombre
      @vip = false
    end

    def vip?
      @vip
    end

    def hacer_vip
      @vip = true
    end
  end

  