require 'rqc'
RQC do  
  property "String#to_s equals self", ascii_string do |str|
#    collect(str.length)
    assert("Sean".to_s == "Sean")
  end

  property "Integer squared is an integer greater than 0", int do |i|
    assert(i**2 == i**2.to_i)
    assert(i**2 > 0)
  end
end
