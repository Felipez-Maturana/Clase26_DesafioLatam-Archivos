def contarPalabrasFile(fileName)
	file=File.open(fileName,"r")
	contenido = file.read()
	contenido = contenido.split(" ")

	return contenido.length

end

def contarAparicionesFile(fileName, str)
	file=File.open(fileName,"r")
	contenido = file.read()
	contenido = contenido.split(" ")

	print contenido

	contador = 0
	i=0

	while(i<contenido.length)
		# Es necesario cortar la palabra obtenida en el texto, ya que puede contener basura (ex. punto final)
		if(contenido[i][0...str.length].eql? str)
			contador+=1
		end
		i+=1
	end
	return contador

end


# print contarPalabrasFile("lorem.txt")

print contarAparicionesFile("almacen.txt","laborum") 