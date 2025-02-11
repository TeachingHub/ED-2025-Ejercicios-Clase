unit uPilaInteger;

    
interface

    uses
        sysutils;
    
    type
        tNodo = record
            info: integer;
            ant: ^tNodo;
        end;

        tPilaEnteros= ^tNodo;

    { Inicializa la pila }
    procedure initialize(var p: tPilaEnteros);
    { Agrega un elemento a la pila }
    procedure push(var p: tPilaEnteros; x: integer);
    { Elimina el elemento de la cima de la pila }
    procedure pop(var p: tPilaEnteros);
    { Devuelve el elemento de la cima de la pila }
    function peek(p: tPilaEnteros): integer;
    { Devuelve true si la pila esta vacia }
    function isEmpty(p: tPilaEnteros): boolean;


    { Otros métodos }
    { Libera los recursos de la pila }
    procedure clear(var p: tPilaEnteros);
    { Imprime los elementos de la pila }
    function toString(p: tPilaEnteros): string;

    
implementation
    

    { Inicializa la pila }
    procedure initialize(var p: tPilaEnteros);
    begin
        p := nil; { Inicializa el cima de la pila a nil }
    end;

    { Devuelve true si la pila esta vacia }
    function isEmpty(p: tPilaEnteros): boolean;
    begin
        isEmpty := p = nil; { Devuelve true si la cima es nil }
    end;

    { Agrega un elemento a la pila }
    procedure push(var p: tPilaEnteros; x: integer);
    var
        nuevo: ^tnodo;
    begin
        new(nuevo);        { Crea un nuevo nodo }
        nuevo^.info := x;  { Asigna el valor al nuevo nodo }
        nuevo^.ant := p; { Enlaza el nuevo nodo con la anterior cima }
        p := nuevo;   { Actualiza la cima de la pila }
    end;

    { Elimina el elemento del cima de la pila }
    procedure pop(var p: tPilaEnteros);
    var
        aux: ^tnodo;
    begin
        if not isEmpty(p) then
        begin
            aux := p;      { Guarda la cima de la pila en un nodo auxiliar }
            p := p^.ant; { Actualiza la cima de la pila }
            dispose(aux);        { Libera la memoria del nodo eliminado }
        end;
    end;

    { Devuelve el elemento la cima de la pila }
    function peek(p: tPilaEnteros): integer;
    begin
        if not isEmpty(p) then
            peek := p^.info; { Devuelve el valor de la cima de la pila }
    end;


    { ----------------------------------------------------- }
    { ------------------ Funcionalidad extra -------------- }
    { ----------------------------------------------------- }

    { Libera los recursos de la pila }
    procedure clear(var p: tPilaEnteros);
    begin
        while not isEmpty(p) do
        begin
            pop(p); { Elimina los nodos de la pila }
        end;
    end;

    { Imprime los elementos de la pila }
    function toString(p: tPilaEnteros): string;
    var
        aux: ^tnodo;
        s: string;
    begin
        s := '';       { Inicializa la cadena de texto }
        if not isEmpty(p) then
        begin
            aux := p; { Inicializa el nodo auxiliar con la cima de la pila }
            while aux <> nil do
            begin
                s := s + IntToStr(aux^.info) + ' '; { Concatena el valor del nodo con un espacio }
                aux := aux^.ant; { Avanza al nodo anterior }
            end;
        end;
        toString := s; { Devuelve la cadena de texto }
    end;

    
end.
