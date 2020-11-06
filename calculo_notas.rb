
data = open('notas.data',converters: :numeric).readlines
		.reject{|x| x.empty? }
def nota_mas_alta(data)
	arreglo = data.chomp.split(',')
	arreglo1 = arreglo.reject {|x| x == arreglo[0]}
	arreglo2 = arreglo1.map { |x| x.to_i }
	puts arreglo2.max
end
nota_mas_alta(data[0])