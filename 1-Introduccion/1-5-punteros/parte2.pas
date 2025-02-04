program parte2;

type
    PEntero = ^Integer;

var
    ptr: PEntero;

begin


    WriteLn('Punteros con memoria dinámica');
    WriteLn('El punto inicialmente apunta a: ', PtrUInt(ptr));

    { Reservar memoria dinámica para un entero }
    New(ptr);

    { Mostrar la dirección de memoria }
    WriteLn('El puntero después de reservar memoria: ', PtrUInt(ptr));

    { ¿Qué hay en la dirección de memoria? }
    WriteLn('El valor almacenado en la dirección de memoria: ', ptr^);
    {¿Por qué hay algo?}

    { Asignar un valor al entero apuntado por ptr }
    ptr^ := 42;
    
    { Mostrar el valor almacenado y la dirección de memoria }
    Writeln('Valor almacenado: ', ptr^);
    Writeln('Direccion de memoria: ', PtrUInt(ptr));
    
    { Liberar la memoria dinámica }
    Dispose(ptr);
    
    { Asignar nil al puntero }
    ptr := nil;

    { Mostrar el valor del puntero después de liberar la memoria }
    WriteLn('El puntero después de liberar la memoria: ', PtrUInt(ptr));
    
    { Mostrar el valor del puntero después de liberar la memoria }
    if ptr = nil then
        Writeln('El puntero es nil')
    else
        Writeln('El puntero no es nil');
end.