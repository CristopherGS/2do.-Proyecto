require_relative 'clases listas'
array=[]
listas=Listas.new()
def ingresar_datos(array=[])
   print 'Ingrese los numreso: '
   array=gets.chomp.split(' ').map(&:to_i)
end
array = ingresar_datos(array)
listas.agregar(array)
listas.mostrar()