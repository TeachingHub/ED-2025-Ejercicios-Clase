program ejemplo_pila_enteros.pas;


uses
    uPilaInteger;

var
    pila: tPilaEnteros;
    valor: integer;

{
    Hemos sacado todos los elementos de la pila, volvemos al programa original a trabajar con la pila  y resulta que está vacía.
    ¿Por qué? 

}

procedure imprimirDirecciones(var p: tPilaEnteros; p2: tPilaEnteros);
begin
    writeln('Dirección de la pila: ', PtrUInt(p));
    writeln('Dirección de la variable p: ', PtrUInt(@p));
    writeln('Dirección del elemento anterior tras la cima en la pila: ', PtrUInt(p^.ant));
    writeln('Dirección de la pila 2: ', PtrUInt(p2));
    writeln('Dirección de la variable p2: ', PtrUInt(@p2));
    writeln('Dirección del elemento anterior tras la cima en la pila 2: ', PtrUInt(p2^.ant));
    writeln('MUY IMPORTANTE: Pasar por valor o por referencia una pila solo afecta a la variable que almacenará la dirección de la cima de la pila, no a la pila en sí.');
end;


procedure inicializarPila(var p: tPilaEnteros);
begin
    initialize(p);
    push(p, 3);
    push(p, 2);
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


    {¿Qué ocurre si no pasamos la pila por referencia en los procedimientos y funciones?}
    writeln('¿Qué ocurre si no pasamos la pila por referencia en los procedimientos y funciones?');
    imprimirDirecciones(pila, pila);
    
    writeln(' ------------------- ');

    { Libera los recursos de la pila }
    clear(pila);

end.