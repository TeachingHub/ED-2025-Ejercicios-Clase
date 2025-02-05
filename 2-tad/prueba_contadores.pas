program prueba_contadores;

uses crt, uContador; // uContadorLimitado, ver como cambia el comportamiento

var
    x: TContador;
    i: integer;

begin
    reset(x);
    writeln(get_valor(x));
    for i := 1 to 900 do
        inc(x);
    writeln(get_valor(x));
    repeat
    until keypressed;
end.