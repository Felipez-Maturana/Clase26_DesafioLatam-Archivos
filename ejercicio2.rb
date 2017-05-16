def contarLineasFile(fileName)
	file=File.open(fileName,"r")
	contenido = file.readlines
	return contenido.length
end

puts contarLineasFile("lorem.txt")

