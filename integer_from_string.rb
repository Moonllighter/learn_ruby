puts ifs= "4kj213.iws.123ehfl45.hu.4g6"
d = ifs.scan(/\d+/).map(&:to_i)
puts d

a= ifs.split('').select{|el| el.match(/[\d]+.*/)}
puts a



c= ["12", "3d", "wad", "3"]
q=c.select{|el| el.match(/\d+\D+/)}
puts q