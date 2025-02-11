program ejemplo_pila_enteros_array.pas;


uses
    uPilaIntegerArray;

var
    pila: tPilaEnteros;
    valor: integer;




procedure inicializarPila(var p: tPilaEnteros);
begin
    initialize(p);
    WriteLn('Se añade el elemento 3 a la pila');
    push(p, 3);
    WriteLn('Se añade el elemento 2 a la pila');
    push(p, 2);
    WriteLn('Se añade el elemento 1 a la pila');
    push(p, 1);
end;

begin
    { Inicializa la pila }
    inicializarPila(pila);
    
    { Muestra los elementos de la pila }
    writeln('Elementos en la pila: ', toString(pila));

    { Devuelve el elemento de la cima de la pila }
    writeln('Elemento en la cima: ', peek(pila));

    { Elimina el elemento de la cima de la pila }
    pop(pila);
    WriteLn('Estado de la pila después de eliminar un elemento: ', toString(pila));


    { Verifica si la pila está vacía }
    if isEmpty(pila) then
        writeln('La pila está vacía')
    else
        writeln('La pila no está vacía');


    { Vamos a llenar la pila }
    while not isFull(pila) do
    begin
        push(pila, 1);
    end;

    { Muestra los elementos de la pila }
    writeln('Elementos en la pila: ', toString(pila));

    { Libera los recursos de la pila }
    clear(pila);



end.