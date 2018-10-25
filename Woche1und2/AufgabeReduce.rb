arr = [1,2,3,4,5]
puts arr
erg = arr.reduce(0) {|sum,n|sum + n}
puts erg
