require "ppt.rb"
require "test/unit"

class TestPiedraPapelTijeras < Test::Unit::TestCase

   def setup
      tiradas = [:piedra, :papel, :tijeras]
      ganadoras = {
            :piedra => :tijeras,
            :papel => :piedra,
            :tijeras => :papel
           } 
      resultados = [:gane, :perdi, :empate]
      @ppt_obj = PiedraPapelTijeras.new(tiradas, ganadoras, resultados, "tijeras", "papel", "gane")
   end
   
   def teardown
      #NADA
   end
   
   def test_play
      @ppt_obj.obtener_humano("piedra")
      score = []
      30.times do
         score.push @ppt_objt.jugar
      end
      assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}") # Comprueba que la longitud del score tiene los 3 posibles resultados
   end
   
   def test_wrong_play
      assert_raise(TypeError) {@ppt_obj.obtener_humano('fuego')}
   end
   
   def test_variety
      @ppt_obj.obtener_humano(@ppt_obj.tiradas.sample.to_s)
      answers = []
      20.times do
         answers.push @ppt_obj.jugar
      end
      assert(answers.uniq.length >= 3, "answers.uniq.length = #{answers.uniq.length} answers.length = #{answers.length}")
   end

end
