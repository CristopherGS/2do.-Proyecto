require 'rubygems'
require 'terminal-table/import'
class Listas
    #creando nodo
    def initialize()
    @lista = {
    tope: nil,
    fondo: nil,
    size: 0
    }
    end
    #ingresar valor
    def agregar(array)
        array.each do |a|
            insertar_inicio(@lista,a)
        end        
    end

    def obtener_nodo(lista, posicion)
        nodo = {}
        i = 0
        aux = lista[:tope]
        loop do
            if i == posicion
                nodo = aux
                return nodo
            end
            if aux[:siguiente] == nil
                break
            end
            i += 1
            aux = aux[:siguiente]
        end
        return nodo
    end

    def insertar_inicio(lista,a)
       nodo = {
            valor:  a,
            siguiente: nil
        }
        if vacia?(lista)
            lista[:tope] = nodo
            lista[:fondo] = nodo
        else
            nodo[:siguiente] = lista[:tope]
            lista[:tope] = nodo
        end
        lista[:size] += 1
    end

    def vacia?(lista)
        lista[:tope].nil? && lista[:fondo].nil?
    end

    def mostrar()
        l=@lista
        most(l)
    end

    def most(lista)
        if vacia?(lista)
            puts 'La lista esta vacía'
        else
            aux=lista[:tope]
             tabla = Terminal::Table.new do |t|
                t.headings = [ 'Valor']
            loop do 
                 t.add_row([
                     "#{aux[:valor]}"])
                if aux[:siguiente] == nil
                    break
                else
                    aux=aux[:siguiente]
                end
            end
        end
        puts tabla
    end
end
    
    def ordenar(lista)
        aux=lista[:tope]
        if aux[:siguiente]<nodo[:siguiente]
            lista[:valor] = aux[:siguiente]
        elsif aux[:siguiente]>nodo[:siguiente]
            lista[:valor]=aux[:siguiente]
        else aux [:siguiente]==nil    
        end
        aux=nodo[:siguiente]
    end

    def obtener_posicion(lista,a)
        i = 0
        aux = lista[:tope]
        loop do
            if aux[:valor]== a || aux[:siguiente].nil?
                break
            end
            i += 1
            aux = aux[:siguiente]
        end
        return i
    end
end