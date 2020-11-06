recibir = ARGV[0]
numbers = recibir.to_a
def chart(numbers, size=2)
    numbers.each do |dato|
        puts "|  #{"*" * dato.to_i * size}"
    end
end
return chart(numbers,4)