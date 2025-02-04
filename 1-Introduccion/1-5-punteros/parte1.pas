program parte1;

var
    a: integer;
    p: ^integer;

begin
    a := 10;
    p := @a;

    WriteLn('El valor de a es: ', a);
    WriteLn('La dirección de a es: ', PtrUInt(@a));
    WriteLn('El valor de p es: ', p^);
    WriteLn('La dirección de p es: ', PtrUInt(p));

end.