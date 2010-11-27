key = { :s => 'Ed', :e => '3', :c => 'ff', :r => 'W5', :t => 'o' }

pass = 'secret'

puts pass

output = pass.split('').map do |char|
    key[char.to_sym]
end.join

puts output
