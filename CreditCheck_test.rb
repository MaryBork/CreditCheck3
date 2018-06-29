require 'Mod_One_Projects/lib/credclass4'
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test

def test_it_exists
  credit_check = CreditCheck.new (55555555555555555)
  assert_instance_of CreditCheck.new (55555555555555555), credit_check
end #def

#(1)def reverse_string_to_array
#end #def

#(2)def multiply_every_second_element
#end  #def

#(3)def greater_elements_minus_nine
#end #def

#(4)def array_add
#end #def

#(5)def result_mod
#end # def

#(6)def valid_number?()
#end #def

#(7)def validation_output?()
#end #def


end #class
