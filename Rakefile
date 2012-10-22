task :default => :test

desc "Ejecuta una instacia de PiedraPapelTijeras y ejecuta una jugada para cada posible 'mano'"
task :jugar do
  sh "ruby -Ilib  bin/juegaPPT.rb piedra"
  sh "ruby -Ilib  bin/juegaPPT.rb papel"
  sh "ruby -Ilib  bin/juegaPPT.rb tijeras"
end

desc "Ejecuta los el conjunto de test unitarios"
task :test do
 	sh "ruby -Ilib test/tc_ppt.rb"
end

desc "Ejecuta un test en concreto"
task :t, :test_name do |t, args|
   test_name = args[:test_name] || 'test_play'
   sh "ruby -Ilib test/tc_ppt.rb --name #{test_name}"
end
