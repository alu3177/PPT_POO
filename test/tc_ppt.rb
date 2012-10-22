require "ppt.rb"
require "test/unit"

class TestPiedraPapelTijeras < Test::Unit::TestCase

   def setup
      @ppt_obj = PiedraPapelTijeras.new(nil, nil, nil, "tijeras", "papel")
   end
   
   def teardown
      #NADA
   end
   
   def test_play
      @ppt_obj.obtener_humano("piedra")
      score = []
      30.times do
         score.push (@ppt_obj.jugar)
      end
      assert(score.uniq.length >= @ppt_obj.tiradas.length, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}") # Comprueba que la longitud del score tiene los 3 posibles resultados
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
      assert(answers.uniq.length >= @ppt_obj.tiradas.length, "answers.uniq.length = #{answers.uniq.length} answers.length = #{answers.length}")
   end

end
