def function_FoG(f, g, x)
    return f.call(g.call(x))
end

def function_GoF(f, g, x)
    return g.call(f.call(x))
end

def function_FoF(f, x)
    return f.call(f.call(x))
end

def function_GoG(g, x)
    return g.call(g.call(x))
end

puts "Digite a função f(x):"
f_expression = gets.chomp

puts "Digite a função g(x):"
g_expression = gets.chomp

puts "Digite o valor de x:"
x = gets.chomp.to_f

f = -> (x) { eval(f_expression) }
g = -> (x) { eval(g_expression) }

result_FoG = function_FoG(f, g, x)
result_GoF = function_GoF(f, g, x)
result_FoF = function_FoF(f, x)
result_GoG = function_GoG(g, x)

puts "f°g(x) = #{result_FoG}"
puts "g°f(x) = #{result_GoF}"
puts "f°f(x) = #{result_FoF}"
puts "g°g(x) = #{result_GoG}"