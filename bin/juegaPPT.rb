require 'colorize'
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

if (ARGV.count == 1)
	jugada = ARGV[0].to_sym
else
	raise ArgumentError, "Debe proporcionar una jugada valida: " + tiradas.to_s
    puts ARG[0]
end

ppt = PiedraPapelTijeras.new(tiradas, ganadoras, resultados, jugada, "")


result = ppt.jugar

machine = `hostname`.strip
puts "        ## JUGADOR ##                         ## #{machine} ##"
puts "           #{ppt.humano.to_s.capitalize}               VS               #{ppt.maquina.to_s.capitalize}"
puts ""

case result
  when :gane
      puts "                        Bien, has GANADO!".green
  when :perdi
      puts "                        Lastima, has PERDIDO".red
  when :empate
      puts "                  Casi, has EMPATADO, intentalo de nuevo".yellow
end
    
