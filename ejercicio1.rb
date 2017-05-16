def escribir (str1, str2)
	file1 = File.open("index.html","w")
	file1.puts("<p>#{str1}</p>")
	file1.puts("<p>#{str2}</p>")
	file1.close
end

def escribir2(arrayStr)
	if !arrayStr.empty? && arrayStr.kind_of?(Array)
		i=0
		file1 = File.open("index.html","w")
		while(i<arrayStr.length)
			file1.puts("<p>#{arrayStr[i]}</p>")
			i+=1
		end
	file1.close
	end
end

def escribir3(arrayStr, color)
	if !arrayStr.empty? && arrayStr.kind_of?(Array)
		i=0
		file1 = File.open("index.html","w")
		while(i<arrayStr.length)
			file1.puts("<p background-color=\"#{color}\">#{arrayStr[i]}</p>")
			i+=1
		end
		file1.close
	elsif arrayStr.is_a? String
		file1 = File.open("index.html","w")
		file1.puts("<p background-color=\"#{color}\">#{arrayStr}</p>")
		file1.close
	end
end

#pruebas metodo escribir1
#escribir1("linea1","linea2")


#pruebas metodo escribir2
# arreglo=[]
# arreglo.push("linea1")
# arreglo.push("linea2")
# arreglo.push("linea3")

# escribir2([])

#pruebas metodo escribir3

# escribir3("linea1","red")
