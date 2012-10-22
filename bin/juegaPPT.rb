require "ppt.rb"

tiradas = [:piedra, :papel, :tijeras, :lagarto, :spock]
ganadoras = {
      :piedra =>  [:tijeras, :lagarto],
      :papel =>   [:piedra, :spock],
      :tijeras => [:papel, :lagarto],
      :lagarto => [:papel, :spock],
      :spock =>   [:piedra, :tijeras]
     } 
resultados = [:gane, :perdi, :empate]

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

ppt = PiedraPapelTijeras.new(tiradas, ganadoras, nil, jugada, "", $verbose)
puts ppt.jugar
