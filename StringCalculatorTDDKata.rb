
def add(a)
  str =[]
  str << a

  sum = 0
  count = 0
  str.each do |str|
    num = str.split(/[\n,;]/)

    num.each do |num|
     if num.to_i < 0
       count += 1
       puts "Negative number is not allowed"
     else
      sum += num.to_i
     end
    end
   end
   if count == 0
   puts sum
   end
end

 add("")
 add("1")
 add("1,5")
 add("//;\n1;2")
 add("1\n2,3")
 add("//;\n1;-6")
# add("1,/,/,5,3")
# add("1\n5,2")
