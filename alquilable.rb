module Alquilable
  def calcular_precio(socio)
    if socio.vip?
      return self.precio * 0.9
    else
      return self.precio
    end
  end
end