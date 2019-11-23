defmodule Notas do
  def arrays do
    notas = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    notaMaior = [0,2,2,1,2,2,2,1]
    notaMenor = [0,2,1,2,2,1,2,2]
    newArray  = []
    escalaMaior = []
    escalaMenor = []
  end
  
  def iniciar do
    IO.puts "Selecione uma nota musical:"
    IO.puts "Sequência Maior:"
    IO.puts "Sequência Menor:"
  end
  
  def maior do
    localizacao = notas.find_index(nota)
        reorganizarArray(localizacao)

        temp = 0
        for x <- 0..7 do
            temp ++ notaMaior[x]
            escalaMaior.push(newArray[temp])
        end

        return escalaMaior
  end
  
  def menor do
    localizacao = notas.find_index(nota)
        reorganizarArray(localizacao)

        temp = 0
        for x <- 0..7 do
            temp ++ notaMenor[x]
            escalaMenor.push(newArray[temp])
        end

        return escalaMenor
  end
  
  def reorganizarArray(localizacao) do
        arrayAnt = notas[0, localizacao]
        arrayPos = notas[localizacao, notas.size]
        newArray = arrayPos + arrayAnt
  end
 
end

teoriaMusical = Notas.new
teoriaMusical.iniciar
