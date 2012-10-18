require "ppt.rb"

if (ARGV.count >= 1)
	jugada = ARGV[0].to_sym
    if ARGV[1] == "-v"
        $verbose = true
    else
        $verbose = false
    end
else
	raise ArgumentError, "Debe proporcionar una jugada: piedra, papel o tijeras"
    puts ARG[0]
end

ppt = PiedraPapelTijeras.new(jugada, $verbose)
puts ppt.jugar
