task :default => :jugar

desc "Ejecuta una instacia de PiedraPapelTijeras y ejecuta una jugada para cada posible 'mano'"
task :jugar do
  sh "ruby -Ilib  bin/juegaPPT.rb piedra"
  sh "ruby -Ilib  bin/juegaPPT.rb papel"
  sh "ruby -Ilib  bin/juegaPPT.rb tijeras"
end

desc "Lo mismo que 'jugar', pero de un modo 'verbose'"
task :jugarV do
  sh "ruby -Ilib  bin/juegaPPT.rb piedra -v"
  sh "ruby -Ilib  bin/juegaPPT.rb papel -v"
  sh "ruby -Ilib  bin/juegaPPT.rb tijeras -v"
end

desc "Ejecuta los el conjunto de test unitarios"
task :test do
  #sh "ruby -Ilib test/tc_Circle.rb"
end