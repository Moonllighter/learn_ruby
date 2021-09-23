names   = %w[Vlad Ihor Anatolii Alex Yana Iren Ksenia]
hobbies = %i[volleyball football reading swimming climbig]

users =
  names.map do |name|
    age   = rand(7..78)
    r     = rand(1..3)
    hobbies_user = hobbies.sample(5).take(r)
    if age > 17
      adult = true
    else
      adult = false
    end

    if hobbies_user.count < 3 && hobbies_user.include?(:football) == true
      hobbies_user << hobbies.sample(1)
    elsif hobbies_user.count < 3 && hobbies_user.include?(:football) == false
      hobbies_user << :football
    end
    { name: name, age: age, hobbies: hobbies_user, adult: adult }
  end
users_adult = users.select { |n| n[:adult] == true }
users_name = users_adult.map { |m| m[:name] }
users_hobbies = users.map { |e| e[:hobbies] }
users_hobbies.flatten!
users_averege = users.map { |a| a[:age] }
users_averege.sort!
olds_users = users.select { |n| n[:age] == users_averege[4] }
old_user = olds_users.flatten.compact
<<~HEREDOC
  Names of adult users: #{users_name}
  List of top 3 popular hobbies: #{users_hobbies.tally.first(3).to_h}
  Averege user age: #{users_averege[0]} for #{users_averege[4]} year
  Info about an oldest user:
  name: #{old_user[0][:name]}
  age: #{old_user[0][:age]}
  hobbies: #{old_user[0][:hobbies]}
HEREDOC
