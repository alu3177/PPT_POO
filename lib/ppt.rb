class PiedraPapelTijeras
    attr_accessor :tiradas, :ganadoras, :resultados
    attr_reader :humano, :maquina, :resultado    
    
    def initialize(tiradas, ganadoras, resultados, humano, maquina)
        if tiradas.kind_of? Array
           @tiradas = tiradas        # Array con tiradas posibles
        else
           @tiradas = [:piedra, :papel, :tijeras]
        end
        if ganadoras.kind_of? Hash
            @ganadoras = ganadoras    # Hash de quien gana a quién
        else
            @ganadoras = {
                  :piedra => :tijeras,
                  :papel => :piedra,
                  :tijeras => :papel
                 } 
        end
        if resultados.kind_of? Array
            @resultados = resultados  # Array con :gane, :perdi o :empate
        else
            @resultados = [:gane, :perdi, :empate]
        end
        @humano = humano
        @maquina = maquina
    end

    def obtener_humano(cadena)
      @humano = cadena.to_sym
      raise TypeError unless @tiradas.include?(@humano)
    end
    
    def obtener_maquina
      @maquina = @tiradas.sample
    end

    def jugar
        obtener_maquina

        if @ganadoras[@maquina].kind_of? Array
            if (@humano == @maquina)
                return @resultados[2]
            elsif (@ganadoras[@maquina].member? @humano)
                return @resultados[1]
            else
                return @resultados[0]
            end
        elsif @ganadoras[@maquina].kind_of? Symbol
            case @humano
                when @maquina
                    return @resultados[2]
                when @ganadoras[@maquina]
                    return @resultados[1]
                else
                    return @resultados[0]
            end
        end
    end
end
