data = open('ventas_base.db').read.chomp.split(',')
def proyeccion_venta1 (data)
   suma=[]
    for i in 0..5
        suma.push data[i].to_i
    end
    resultado = suma.sum * 1.1    
end
def proyeccion_venta2 (data)
suma= []
    for i in 6..11
        suma.push data[i].to_i
    end
    resultado1 = suma.sum * 1.2     
end
resultado = []
resultado.push proyeccion_venta1(data).round(1)
resultado.push proyeccion_venta2(data).round(2)

File.write('resultados.data', resultado.join("\n"))

