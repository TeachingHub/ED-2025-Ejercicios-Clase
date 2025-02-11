program ejemplo_pila_generica_array.pas;


uses
    uPilaGenericaArray, uTElement;

var
    pila: tPilaEnteros;

procedure inicializarPila(var p: tPilaEnteros);
var
    elemento1, elemento2, elemento3: TElement;
begin
    initialize(p);
    elemento1.data1 := 3;
    elemento1.data2 := 'Elemento 3';
    push(p, elemento1);
    WriteLn('Se añade el elemento 3 a la pila');

    elemento2.data1 := 2;
    elemento2.data2 := 'Elemento 2';
    push(p, elemento2);
    WriteLn('Se añade el elemento 2 a la pila');

    elemento3.data1 := 1;
    elemento3.data2 := 'Elemento 1';
    push(p, elemento3);
    WriteLn('Se añade el elemento 1 a la pila');
end;

begin
    { Inicializa la pila }
    inicializarPila(pila);
    
    { Muestra los elementos de la pila }
    writeln('Elementos en la pila: ', uPilaGenericaArray.toString(pila));

    { Devuelve el elemento de la cima de la pila }
    WriteLn('Elemento en la cima: ', uTElement.toString(peek(pila)));

    { Elimina el elemento de la cima de la pila }
    if not isEmpty(pila) then
        pop(pila);
    WriteLn('Estado de la pila después de eliminar un elemento: ', uPilaGenericaArray.toString(pila));


    { Verifica si la pila está vacía }
    if isEmpty(pila) then
        writeln('La pila está vacía')
    else
        writeln('La pila no está vacía');

    { Libera los recursos de la pila }
    clear(pila);



end.