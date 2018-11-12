require 'byebug'
begin

def limpiar_pantalla

    system ("clear")

end


    def ingreso_de_datos 

limpiar_pantalla()
        puts 'Ingrese un arreglo de numeros para trabajar:'
        @arreglo = gets.chomp.split(',')
        limpiar_pantalla()
    end

    puts '1. Ingreso de numeros'
    puts '2. Ejecutar ordenamiento'
    puts '3. Ordenar paso a paso'
    puts '4. salir'
    opcion = gets.chomp
    if opcion == '1'

     ingreso_de_datos()

    elsif opcion == '2'

        puts "#{@arreglo} "

    elsif opcion == '3'
    end
end while opcion != '4'