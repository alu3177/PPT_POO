class PiedraPapelTijeras
    #attr_reader :elems
    def initialize(play, verbose=false)
        @elems = [:piedra, :papel, :tijeras]
        @gana = {
            :piedra => :tijeras,
            :papel => :piedra,
            :tijeras => :papel
        }
        raise ArgumentError unless @elems.include?play
        @jugador = play
        @maquina = @elems.sample
        @verbose = verbose
    end

    def jugar
        machine = `hostname`.strip
        if (@verbose == true)
            puts "        ## JUGADOR ##                         ## #{$machine} ##"
            puts "           #{@jugador.to_s.capitalize}               VS               #{@maquina.to_s.capitalize}"
            puts ""
        end

        case @jugador
            when @maquina
                return "EMPATE"
            when @gana[@maquina]
                return "HAS PERDIDO"
            else
                return "HAS GANADO !!"
        end
    end
end
