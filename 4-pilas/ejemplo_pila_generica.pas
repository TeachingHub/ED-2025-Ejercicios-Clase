program ejemplo_pila_generica;

uses
    uPilaElement, uTElement;

var
    pila: tPilaElementos;
    valor: TElement;
begin
    { Inicializa la pila }
    initialize(pila);

    { Asigna valores a los elementos }
    valor.data1 := 10;
    valor.data2 := 'Elemento 10';
    push(pila, valor);

    valor.data1 := 20;
    valor.data2 := 'Elemento 20';
    push(pila, valor);

    valor.data1 := 30;
    valor.data2 := 'Elemento 30';
    push(pila, valor);

    { Muestra los elementos de la pila }
    writeln('Elementos en la pila:', uPilaElement.toString(pila));

    { Devuelve el elemento de la cima de la pila }
    writeln('Elemento en la cima: ', uTElement.toString(peek(pila)));

    { Elimina el elemento de la cima de la pila }
    pop(pila);
    { Muestra los elementos de la pila después de eliminar }
    writeln('Elementos en la pila después de eliminar: ', uPilaElement.toString(pila));

    { Verifica si la pila está vacía }
    if isEmpty(pila) then
        writeln('La pila está vacía')
    else
        writeln('La pila no está vacía');

    { Libera los recursos de la pila }
    clear(pila);
end.