def contarProductos()
	archivoAlmacen = File.open("almacen.txt","r")
	contenidoArchivoAlmacen = archivoAlmacen.readlines()
	archivoAlmacen.close()
	return contenidoArchivoAlmacen.length
end

def stockProducto(nombreProducto)
	archivoAlmacen = File.open("almacen.txt","r")
	contenido=[]

	archivoAlmacen.each_line do |line|
		contenido.push(line.chomp.split(", ")) 
	end
	archivoAlmacen.close()

	i=0
	while(i<contenido.length)
		if(contenido[i][0].upcase.eql? nombreProducto.upcase)
			puts "El articulo #{nombreProducto} posee Stock=#{contenido[i][1]}"
			return contenido[i][1]	
		end
		i+=1
	end
	puts "No se encuentra el producto #{nombreProducto}"
	return
end

def mostrarStockMenor(num)
	archivoAlmacen = File.open("almacen.txt","r")
	contenido=[]

	archivoAlmacen.each_line do |line|
		contenido.push(line.chomp.split(", ")) 
	end
	archivoAlmacen.close()

	i=0
	while(i<contenido.length)
		if(contenido[i][1].to_i < num)
			puts "#{contenido[i][0]} posee Stock=#{contenido[i][1]}"
			return contenido[i][0]	
		end
		i+=1
	end
	puts "No se encuentra el producto #{nombreProducto}"
	return
end

opcion=0
while(opcion != 4)
	puts "##########################MENU##########################"
	puts "1: Contar la cantidad de productos"
	puts "2: Cantidad de Stock de cierto producto"
	puts "3: Stock de productos bajo 5 unidades"
	puts "4: Salir"
	opcion = gets.chomp.to_i

	if (opcion >= 1 && opcion <= 4)
		case opcion
		when 1
			puts "Actualmente hay #{contarProductos()} productos"
		when 2
			puts "Ingrese nombre de producto"
			nombreProducto=gets.chomp
			stockProducto(nombreProducto)
		when 3
			puts "Los productos que poseen un stock de a lo más 5 unidades son"
			mostrarStockMenor(5)
		when 4
			puts"Cerrando Sesión, el programa ha finalizado correctamente."
		end
	else
		puts "opción inválida, por favor, intente nuevamente."
	end

end


