require 'byebug'
require_relative 'clases listas'
#array=[]
#listas=Listas.new()
#def ingresar_datos(array=[])
#   print 'Ingrese los numreso: '
#   array=gets.chomp.split(' ').map(&:to_i)
#end
array = ingresar_datos(array)
listas.agregar(array)
listas.mostrar()

def limpiar_pantalla
    system ("clear")
end

def ingreso_de_datos 
    limpiar_pantalla()
    puts 'Ingrese un arreglo de numeros para trabajar:'
    @arreglo = gets.chomp.split(',')
end

begin
    puts '1. Ingreso de numeros'
    puts '2. Ejecutar ordenamiento'
    puts '3. Ordenar paso a paso'
    puts '4. salir'
    opcion = gets.chomp
    limpiar_pantalla
    if opcion == '1'
     ingreso_de_datos
    elsif opcion == '2'
        puts "#{@arreglo}"
        gets
    elsif opcion == '3'
    end
    limpiar_pantalla
end while opcion != '4'