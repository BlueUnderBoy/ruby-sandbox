require "date"
unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

if some_random_input.is_a?(TrueClass)
  puts "you may pass"
elsif some_random_input.is_a?(FalseClass)
  puts "you may not pass"
elsif some_random_input.is_a?(NilClass)
  puts "no object provided"
elsif some_random_input.is_a?(String)
  puts some_random_input.downcase!
elsif some_random_input.is_a?(Time)
  puts some_random_input.strftime('%A').downcase!
elsif some_random_input.is_a?(Integer)
  if some_random_input.to_i%2 == 0
    puts "#{some_random_input} is even"
  else
    puts "#{some_random_input} is odd"
  end
elsif some_random_input.is_a?(Symbol)
  puts ":#{some_random_input.to_s.downcase!}"
elsif some_random_input.is_a?(Hash)
  w = []
  some_random_input.each {|x,y| w << x} 
  print w
else
  pp "What is going on here? #{some_random_input.class}"
end
