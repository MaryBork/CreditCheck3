class CreditCheck
  def initialize(usernum)
    @usernum = usernum
    @rev_int_array = []
    @second_times_two = []
    @singles = []
    @arrayresult = 0
    @bool = nil
    @valnum = nil

  end #def

  def reverse_array_i
    @rev_int_array << @usernum.to_i.digits
  end #def

  def every_odd_index_times_two
    @rev_int_array.each.with_index do |value, index|
    @second_times_two <<
    if index.odd?
      value * 2
    else
      value
    end #do
  end #if
  return @second_times_two
end  #def


  def greater_than_ten_minus_nine
    @second_times_two.each.with_index do |value, index|
    @singles <<
    if value >= 10
      value - 9
    else
      value
    end #do
  end #if
  return @singles
end #def



  def add_index
    @arrayresult = @singles.sum
  end #def

  def result_mod_ten
    @mod = @arrayresult % 10
  end #def

  def luhnalgorithm #(@usernum)
    @usernum.reverse_array_i
    @rev_int_array.every_odd_index_times_two
    @second_times_two.greater_than_ten_minus_nine
    @singles.add_index
    @arrayresult.result_mod_ten
    if @arrayresult == 0
      @bool = true
    else
      @bool = false
    end #if

  end #def

  #def true_or_false_print
  #  @valid_number.true?
    #puts "#{@usernum} is valid."
#  else
    #puts "#{@usernum} is invalid"
  #end
  def valid_number?(usernum)
    @usernum.luhnalgorithm
    if @bool == true
      @valnum = true
    else
      @valnum = false
    end
  end #def

  def validation_output?(usernum)
    valid_number?(usernum)
    if @valnum == true
    puts "The Number #{@usernum} Is Valid."
  else
    puts "The Number #{@usernum} Is Invalid"
  end #if
end #def

end #class def
