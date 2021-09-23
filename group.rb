require 'pry'
arr = %w(Dima Vlad Oleg Oleg Oleg  Artur Artur Artur)
p arr.group_by { |i| i }.map { |k, v| [k, v.size ]}.sort { |(first, last)| last }.first(3).to_h

binding.pry

p [['vlad', 1], ['vovk', 2]].to_h