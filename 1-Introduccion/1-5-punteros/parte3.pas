program parte3;

type
    PChar = ^Char;

var
    ptr1, ptr2: PChar;
    char1, char2: Char;

begin
    char1 := 'A';
    char2 := 'B';

    (* Punteros que apuntan a las variables char1 y char2 *)
    ptr1 := @char1;
    ptr2 := @char2;

    WriteLn('El valor de char1 es: ', char1);
    WriteLn('La dirección de char1 es: ', PtrUInt(@char1));
    WriteLn('El valor de ptr1 es: ', ptr1^);
    WriteLn('La dirección de ptr1 es: ', PtrUInt(ptr1));

    WriteLn('El valor de char2 es: ', char2);
    WriteLn('La dirección de char2 es: ', PtrUInt(@char2));
    WriteLn('El valor de ptr2 es: ', ptr2^);
    WriteLn('La dirección de ptr2 es: ', PtrUInt(ptr2));

    if ptr1^ = ptr2^ then
        writeln('Los caracteres son iguales.')
    else
        writeln('Los caracteres son diferentes.');

    if ptr1 = ptr2 then
        writeln('Los punteros son iguales.')
    else
        writeln('Los punteros son diferentes.');

    readln;

    (* 
        Asignar el valor de char1 a char2 
        ¿Qué pasa con los punteros?
        ¿Tienen el mismo valor?
        ¿Apuntan a la misma dirección de memoria?
    *)
    char2 := char1;
    WriteLn('El valor de char2 es: ', char2);
    WriteLn('La dirección de char2 es: ', PtrUInt(@char2));
    WriteLn('El valor de ptr2 es: ', ptr2^);
    WriteLn('La dirección de ptr2 es: ', PtrUInt(ptr2));

    if ptr1^ = ptr2^ then
        writeln('Los caracteres son iguales.')
    else
        writeln('Los caracteres son diferentes.');

    if ptr1 = ptr2 then
        writeln('Los punteros son iguales.')
    else
        writeln('Los punteros son diferentes.');

    readln;

    char1 := 'C';
    ptr2 := ptr1;
    WriteLn('El valor de ptr2 es: ', ptr2^);
    WriteLn('La dirección de ptr2 es: ', PtrUInt(ptr2));

    if ptr1^ = ptr2^ then
        writeln('Los caracteres son iguales.')
    else
        writeln('Los caracteres son diferentes.');

    if ptr1 = ptr2 then
        writeln('Los punteros son iguales.')
    else
        writeln('Los punteros son diferentes.');
        
    readln;


    ptr1^ := 'D';
    WriteLn('El valor de char1 es: ', char1);
    WriteLn('La dirección de char1 es: ', PtrUInt(@char1));
    WriteLn('El valor de ptr1 es: ', ptr1^);

    if ptr1^ = ptr2^ then
        writeln('Los caracteres son iguales.')
    else
        writeln('Los caracteres son diferentes.');

    if ptr1 = ptr2 then
        writeln('Los punteros son iguales.')
    else
        writeln('Los punteros son diferentes.');


end.