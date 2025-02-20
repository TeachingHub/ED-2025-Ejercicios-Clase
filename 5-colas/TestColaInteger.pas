program TestColaInteger;

uses
    uColaInteger;

var
    cola, copiaCola: tCola;
    i: integer;

begin
    // Inicializar la cola
    initialize_queue(cola);
    writeln('Cola inicializada.');

    // Verificar si la cola está vacía
    if empty_queue(cola) then
        writeln('La cola está vacía.')
    else
        writeln('La cola no está vacía.');

    // Agregar elementos a la cola
    writeln('Agregando elementos a la cola...');
    for i := 1 to 5 do
    begin
        enqueue(cola, i);
        writeln('Elemento agregado: ', i);
    end;

    // Mostrar el contenido de la cola
    writeln('Contenido de la cola: ', toString(cola));

    // Obtener el primer y último elemento de la cola
    writeln('Primer elemento de la cola: ', first(cola));
    writeln('Último elemento de la cola: ', last(cola));

    // Eliminar un elemento de la cola
    writeln('Eliminando un elemento de la cola...');
    dequeue(cola);
    writeln('Contenido de la cola después de dequeue: ', toString(cola));

    // Contar el número de elementos en la cola
    writeln('Número de elementos en la cola: ', num_elems(cola));

    // Copiar la cola
    writeln('Copiando la cola...');
    copy(cola, copiaCola);
    writeln('Contenido de la copia de la cola: ', toString(copiaCola));

    // Limpiar la cola original
    writeln('Limpiando la cola original...');
    clear(cola);
    writeln('Contenido de la cola original después de limpiar: ', toString(cola));

    // Verificar si la cola copia sigue intacta
    writeln('Contenido de la copia de la cola después de limpiar la original: ', toString(copiaCola));

    // Limpiar la cola copia
    writeln('Limpiando la copia de la cola...');
    clear(copiaCola);
    writeln('Contenido de la copia de la cola después de limpiar: ', toString(copiaCola));
end.