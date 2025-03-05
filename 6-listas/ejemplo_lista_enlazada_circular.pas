program ejemplo_lista_enlazada_simple;

uses
    uListaEnlazadaCircular;

var
    lista: tListaCircular;
    copia: tListaCircular;
begin
    // Inicializar la lista
    initialize(lista);
    writeln('Lista inicializada.');

    // Insertar elementos al final
    insert_at_end(lista, 10);
    insert_at_end(lista, 20);
    insert_at_end(lista, 30);
    writeln('Lista después de insertar 10, 20, 30 al final: ', to_string(lista));

    // Obtener el primer y último elemento
    writeln('Primer elemento: ', first(lista));
    writeln('Último elemento: ', last(lista));

    // Insertar elementos al inicio
    insert_at_begin(lista, 5);
    writeln('Lista después de insertar 5 al inicio: ', to_string(lista));

    // Verificar si la lista está vacía
    if is_empty(lista) then
        writeln('La lista está vacía.')
    else
        writeln('La lista no está vacía.');

    // Obtener el primer y último elemento
    writeln('Primer elemento: ', first(lista));
    writeln('Último elemento: ', last(lista));

    // Insertar más elementos
    insert_at_end(lista, 40);
    insert_at_end(lista, 50);
    writeln('Lista después de insertar 40, 50 al final: ', to_string(lista));

    // Eliminar un elemento específico
    delete(lista, 20);
    writeln('Lista después de eliminar el elemento 20: ', to_string(lista));

    // Verificar si un elemento está en la lista
    if in_list(lista, 30) then
        writeln('El elemento 30 está en la lista.')
    else
        writeln('El elemento 30 no está en la lista.');

    // Obtener el número de elementos en la lista
    writeln('Número de elementos en la lista: ', num_elems(lista));

    // Copiar la lista
    copy(lista, copia);
    writeln('Copia de la lista: ', to_string(copia));

    // Limpiar la lista
    clear(lista);
    writeln('Lista después de limpiar: ', to_string(lista));

    // Comprobar si la lista está vacía
    if is_empty(lista) then
        writeln('La lista está vacía.')
    else
        writeln('La lista no está vacía.');

    
    // Buscar un elemento en la lista vacía
    if in_list(lista, 30) then
        writeln('El elemento 30 está en la lista.')
    else
        writeln('El elemento 30 no está en la lista.');
end.