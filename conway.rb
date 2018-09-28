SIZE = 4
#TABLEROREF = [["1","2","3"],["4", "5","6"],["7", "8","9"]]
tableroJuego = [["0","1","0"],["1", "0","0"],["1", "1","1"],["0", "1","0"]]

#Class conways
    def CrearUniverso(tamano)
        universo = [tamano]
        for x in 0...tamano
            universo[x] = [tamano]
            for y in 0...tamano
                universo[x][y] = rand(0..1)
            end
        end
        return universo     
    end 

    def imprimir2(matriz)
        matriz.each_with_index do |e, row, col|
            puts "#{row},#{col}=>#{e}" 
        end
    end

    def imprimir(matriz)
        matriz.each_with_index do |e, row, col|
            puts "#{e}" 
        end
    end

    def siguienteMundo(universo,tamano)
        #universo = [tamano]
        nuevouniverso = [tamano]
        for x in 0..3
           # universo[x] = [tamano]
           # nuevouniverso[x] = [tamano]
            for y in 0..3
                #nuevouniverso[x][y]=0
                
                vecinos = 0
                if universo[x-1][y]==1 then 
                    vecinos +=1
                end
                if universo[x-1][y-1] == 1 then 
                    vecinos +=1
                end
                if universo[x-1][y+1] == 1 then 
                    vecinos +=1
                end
                if universo[x][y-1] == 1 then 
                    vecinos +=1
                end
                if universo[x][y+1] == 1 then 
                    vecinos +=1
                end
                if universo[x+1][y-1] == 1 then 
                    vecinos +=1
                end
                if universo[x+1][y+1] == 1 then 
                    vecinos +=1
                end
                if universo[x+1][y] == 1 then 
                    vecinos +=1
                end 
                puts "en X = #{x} , en Y = #{y}"
                puts vecinos
                #gets
               # nuevouniverso[x][y] = vecinos
                vecinos=0
            end
        end
        return nuevouniverso 
    end

    def estadocelula(universo,x,y)
        #la posicion que se valida esta viva entonces 
        #puede existir vida en el siguiente brinco 
        if universo[x][y] == 1 then 
            if(vecinos<=1 || vecinos>=4) then 
                nuevouniverso[x][y] = 0
            end 
            if(vecinos==2 || vecinos==3) then
                nuevouniverso[x][y] = 1
            end
            if(vecinos==3) then
                nuevouniverso[x][y] = 1
            else
                nuevouniverso[x][y] = 0
            end
        end
    end 


#end #class

#universo = CrearUniverso(SIZE)
imprimir(tableroJuego)
siggeneracion = siguienteMundo(tableroJuego,SIZE)
#puts "------------------------"
#imprimir(siggeneracion)
