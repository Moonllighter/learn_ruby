hash = [
    { rand(1..100) => 'Vlad'  },
    { rand(1..100) => 'Igor'  },
    { rand(1..100) => 'Sasha' },
    { rand(1..100) => 'Yana'  }
  ]

result= hash.map do |h|
    h.map{ |v, c| "#{c}: #{v}" }
end   

puts result
